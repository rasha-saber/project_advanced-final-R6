 @section('headerdetails')


            <header class="site-header d-flex flex-column justify-content-center align-items-center">
                <div class="container">
                    <div class="row justify-content-center align-items-center">

                        <div class="col-lg-5 col-12 mb-5">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="{{route('index') }}">Homepage</a></li>

                                    <li class="breadcrumb-item active" aria-current="page">{{ $topic->category->category_name }}</li>
                                </ol>
                            </nav>

                            <h2 class="text-white">{{ $topic->title }}</h2>

                            <div class="d-flex align-items-center mt-5">
                                <a href="#topics-detail" class="btn custom-btn custom-border-btn smoothscroll me-4">Read More</a>

<span class="badge bg-primary">{{ $topic->views }} Views</span>
                                <a href="{{ route('increaseViews', $topic->id) }}" class="custom-icon bi-bookmark smoothscroll"></a>
                            </div>
                        </div>

                        <div class="col-lg-5 col-12">
                            <div class="topics-detail-block bg-white shadow-lg">
                                <img src="{{asset('/images/topics/undraw_Remote_design_team_re_urdx.png')}}" class="topics-detail-block-image img-fluid">
                            </div>
                        </div>

                    </div>
                </div>
            </header>

@endsection