<!doctype html>
<html lang="en">
@include('public.incluodes.head')
    
    
@yield('bodyindex')
@yield('body')
   <main>
@yield('nav')
@yield('navber')
     
        @yield('header')
    @yield('headerdetails')

 @yield('details')
        @yield('contentindex')
        @yield('listing')
        @yield('test')
        
  @yield('error')
                </main>

    </main>
    @include('public.incluodes.footer')
    @include('public.incluodes.footerjs')

</body>

</html>