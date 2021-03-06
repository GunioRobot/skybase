<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url var="plusIconUrl" value="/images/icons/plus.png" />
<c:url var="minusIconUrl" value="/images/icons/minus.png" />
<c:url var="feedIconUrl" value="/images/icons/feed.png" />

<div id="updatesPane">
	<div class="paneHead">
		<div class="table">
			<div class="tr">
				<div class="td"><h2>Updates</h2></div>
				<div class="td" style="text-align:right">
					<ul class="menu">
						<li><a href="#" title="Show more"><img src="${plusIconUrl}" alt="Show more" /></a></li>
						<li><a href="#" title="Show less"><img src="${minusIconUrl}" alt="Show less" /></a></li>
						<li><a href="#" title="RSS feed"><img src="${feedIconUrl}" alt="RSS" /></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="paneBody">
		<table>
			<tbody>
				<c:url var="personUrl" value="/people/williewheeler" />
				<tr>
					<td><div class="gravatar"><img src="http://www.gravatar.com/avatar/b0a72ae61c5c74a51fe46cf66599b6c5" /></div></td>
					<td style="width:100%">
						<div class="updater">
							<a href="${personUrl}">Willie Wheeler</a>
						</div>
						<div>
							<div class="createProject icon">
								<span class="event"><a href="#">Skybase</a></span>
								<span class="timestamp secondary">- created 30 minutes ago</span>
							</div>
							<div class="deleteProject icon">
								<span class="event"><a href="#">Test app</a></span>
								<span class="timestamp secondary">- deleted 4 minutes ago</span>
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td><div class="gravatar"><img src="http://www.gravatar.com/avatar/8a7d5d2d990688138e96ce570b6c30d7" /></div></td>
					<td style="width:100%">
						<div class="updater">
							<a href="${personUrl}">Demo Person</a>
						</div>
						<div>
							<div class="createProject icon">
								<span class="event"><a href="#">Skybase</a></span>
								<span class="timestamp secondary">- created 30 minutes ago</span>
							</div>
							<div class="deleteProject icon">
								<span class="event"><a href="#">Test app</a></span>
								<span class="timestamp secondary">- deleted 4 minutes ago</span>
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td><div class="gravatar"><img src="http://www.gravatar.com/avatar/102554e6797f2d77c5ef3c797ed299b7" /></div></td>
					<td style="width:100%">
						<div class="updater">
							<a href="${personUrl}">Thug Killa</a>
						</div>
						<div>
							<div class="deleteProject icon">
								<span class="event"><a href="#">Test app</a></span>
								<span class="timestamp secondary">- deleted 4 minutes ago</span>
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td><div class="gravatar"><img src="http://www.gravatar.com/avatar/b0a72ae61c5c74a51fe46cf66599b6c5" /></div></td>
					<td style="width:100%">
						<div class="updater">
							<a href="${personUrl}">Willie Wheeler</a>
						</div>
						<div>
							<div class="createProject icon">
								<span class="event"><a href="#">Skybase</a></span>
								<span class="timestamp secondary">- created 30 minutes ago</span>
							</div>
							<div class="createProject icon">
								<span class="event"><a href="#">Test app</a></span>
								<span class="timestamp secondary">- created 28 minutes ago</span>
							</div>
							<div class="deleteProject icon">
								<span class="event"><a href="#">Test app</a></span>
								<span class="timestamp secondary">- deleted 4 minutes ago</span>
							</div>
						</div>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
</div>
