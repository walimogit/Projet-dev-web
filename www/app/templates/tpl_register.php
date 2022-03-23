<main class="form-signin">
      <div class="raw">
        <form>
          <h1 class="h3 mb-3 fw-normal">Create account for student</h1>
          <div class="col-12">
            <label for="fisrt_name" class="form-label">Fisrt name</label>
            <input type="text" name="fisrt_name" class="form-control" id="fisrt_name" placeholder="Jean" required>
          </div>
          <div class="col-12">
            <label for="last_name" class="form-label">Last name</label>
            <input type="text" name="last_name" class="form-control" id="last_name" placeholder="Lassale" required>
          </div>
          <div class="col-12">
            <label for="inputCampus" class="form-label">Campus</label>
            <select id="inputCampus" name="campus" class="form-select">
              <option selected>...</option>
              <option value ="reims">Reims</option>
              <option value ="nancy">Nancy</option>
              <option value ="strasbourg">Strasbourg</option>
              <option value ="rouen">Rouen</option>
              <option value ="autres">Faites pas chier les autres viendront après</option>
            </select>
          </div>
          <div class="col-12">
            <label for="inputClass" class="form-label">Class</label>
            <select id="inputClass" name="class" class="form-select">
              <option selected>...</option>
              <option value ="a1">A1</option>
              <option value ="a2">A2</option>
              <option value ="a3">A3</option>
              <option value ="a4">A4</option>
              <option value ="a5">A5</option>
            </select>
          </div><br>
          <button class="w-100 btn btn-lg btn-primary" id="create_account" type="submit">Create account</button>
          <p class="mt-5 mb-3 text-muted">&copy; 2018–2022</p>
        </form>
      </div>
</main>