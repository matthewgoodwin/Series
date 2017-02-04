# README
feb2, 2017

<%= link_to "leaders", leader_user_show_reviews_path(@usershow) %>
<h4><%= link_to "back to index", user_shows_path %></h4>

Jan31,2017
_show.html.erb(review partial)
<!-- <div class="container">
  <div class="row">
    <div class="col-xs-12 col-sm-8 col-sm-offset-2">
      <div class="reviews-show">
        <h3><%= review.standout %></h3>
        <h4>"<%= review.phrase %>"</h4>
        <p>rating: <%= review.rating %></p>
      </div>
    </div>
  </div>
</div> -->


Jan30,2017
//var latest_rev = $("<h4>latest review:</h4><p> <%= j usershow.reviews.last.standout %>: <%= j usershow.reviews.last.phrase  %> </p>");
// ^ the above needs to be rendered from a partial, like the 'show' page
//$('.latest-review').append(latest_rev);

Jan29,2017
http://guides.rubyonrails.org/active_record_querying.html#understanding-the-method-chaining

Jan29,2017
arrays and numbers cant be used for chaining queries in SQL

Jan28,2017
helps with activerecord query:
http://guides.rubyonrails.org/active_record_querying.html#sum


brand colors : rgb(255, 237, 48),rgb(255, 158, 40) and rgb(51, 51, 51)
when using render with partials is it bad to pass instance variables as stated in the blog post:"Using instance variables in partials complicates the control flow, which facilitates bugs and makes reuse of partials more difficult".. however on the active record documentation:
        http://api.rubyonrails.org/classes/ActionView/PartialRenderer.html
    the examples given pass instance variables and objects in locals.. which is correct???

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

