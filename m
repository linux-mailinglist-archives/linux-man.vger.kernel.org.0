Return-Path: <linux-man+bounces-3822-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 74513B3EC6B
	for <lists+linux-man@lfdr.de>; Mon,  1 Sep 2025 18:41:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7EEAD7AC0BD
	for <lists+linux-man@lfdr.de>; Mon,  1 Sep 2025 16:39:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B1F12EF66A;
	Mon,  1 Sep 2025 16:40:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G+CWDHu+"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C72D01C5D7D;
	Mon,  1 Sep 2025 16:40:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756744852; cv=none; b=Mknoff8A/rY3Zn6GQiuD76UPmvSI/Hwc86JXAM+tEWTNmOFHfF2rlGxlgLFEHkddjc0P72e0uAg/IM3WwPYKsQArXvct2S8zj7dmsuvHlMQlwyeCcVFK4d7peEv0NAyl5jZZaGNLg57lV7BrioHMcC7SVfscsEuAdCrlhkHxHTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756744852; c=relaxed/simple;
	bh=EYcCtsQW0Wv4uVBxrkecx/q6RsKoRtiUpOXGlQ9kpVg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YRdV+xSjHoJ2ZSw8OI7VVEEhk9cgdd9zGDHmaVd5Bmg6r3RriC2CShXVgrieEgBnlZ4GezbIaa2hFIgXkfMNUN/5m14azCz/5l+ov1KtIqbBjEGB6ei4+81vBcmET+kg8XtpehN4jQk/Y1IpvWTXADM0tB7MYc65Yg+D2WhYr0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G+CWDHu+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1713AC4CEF0;
	Mon,  1 Sep 2025 16:40:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756744851;
	bh=EYcCtsQW0Wv4uVBxrkecx/q6RsKoRtiUpOXGlQ9kpVg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=G+CWDHu+GSpr35iGDk1Nh9STcszBPHxpfOEINwRxBtNsjUD7dAYvhnUroNnLZhY7d
	 QE62WXJzvUbBVF6r2efbDNd/PNHftfjEGGXwS0AAj3A6XJ0cWBycpXU+uyVq5Q/8Bg
	 wBt0Gx4CtrSEZ5TmEODy2vgkGr/3T5LnAlvfv3yPVXyK5sPu3Qjny/UWOjZU3ydrOS
	 deb/vomGIAOzuE0cr/fWYI0otcMQn2BN/hliuS8CbdNSV8mriJHjaQlxIBxzW4OEq1
	 N18FPT8I061kxGITJtc2GkFfATUYVbjIFdFocu2petFfuZecgsfIcIGA/2rj/vMkD8
	 ECK206N/NJKIw==
Date: Mon, 1 Sep 2025 18:40:43 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Usama Arif <usamaarif642@gmail.com>
Cc: linux-man@vger.kernel.org, david@redhat.com, 
	lorenzo.stoakes@oracle.com, hannes@cmpxchg.org, baohua@kernel.org, shakeel.butt@linux.dev, 
	ziy@nvidia.com, laoar.shao@gmail.com, baolin.wang@linux.alibaba.com, 
	Liam.Howlett@oracle.com, linux-kernel@vger.kernel.org, kernel-team@meta.com
Subject: Re: [PATCH] PR_*ET_THP_DISABLE.2const: document addition of
 PR_THP_DISABLE_EXCEPT_ADVISED
Message-ID: <hbwmiqb2qjyf4bemcbg2nwil4oceukvevml4jrilm4q4souv6e@hmjk4ubgavg2>
References: <20250901160903.2801339-1-usamaarif642@gmail.com>
 <d45bfc2d-91da-4a70-90d2-4e0319c5241c@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="twz4n2ienikp6hn5"
Content-Disposition: inline
In-Reply-To: <d45bfc2d-91da-4a70-90d2-4e0319c5241c@gmail.com>


--twz4n2ienikp6hn5
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Usama Arif <usamaarif642@gmail.com>
Cc: linux-man@vger.kernel.org, david@redhat.com, 
	lorenzo.stoakes@oracle.com, hannes@cmpxchg.org, baohua@kernel.org, shakeel.butt@linux.dev, 
	ziy@nvidia.com, laoar.shao@gmail.com, baolin.wang@linux.alibaba.com, 
	Liam.Howlett@oracle.com, linux-kernel@vger.kernel.org, kernel-team@meta.com
Subject: Re: [PATCH] PR_*ET_THP_DISABLE.2const: document addition of
 PR_THP_DISABLE_EXCEPT_ADVISED
References: <20250901160903.2801339-1-usamaarif642@gmail.com>
 <d45bfc2d-91da-4a70-90d2-4e0319c5241c@gmail.com>
MIME-Version: 1.0
In-Reply-To: <d45bfc2d-91da-4a70-90d2-4e0319c5241c@gmail.com>

Hi Usama,

On Mon, Sep 01, 2025 at 05:18:22PM +0100, Usama Arif wrote:
> I am not sure what the right time is to send the mandoc changes.
> The patches have been merged into mm-new for more than 2 weeks.
> We can still review it and I can resend if needed after the kernel releas=
e if that
> is a more appropriate time?

No, this is fine.  Let's refine the patches for now.

Once we're done, I guess we can either wait until they arrive at Linus's
tree, or if you're very confident this will reach a release eventually,
we can merge it now here, and eventually fix it if something small
changes later.  I don't mind too much.  It's more up to you, and how
much you expect this to change before the actual release of Linux.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--twz4n2ienikp6hn5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmi1zIsACgkQ64mZXMKQ
wqngSw//SnTGh3HNPiefx0mB0PXLzEghkGJ8Zt03y4grnPvDOC7jfD8Jl5lBExK4
uOjLxj/BORfsAuacL64JwMSKem7T6OTKJjebRdqqycSDnti/jYCCzrInJPzJlK30
G3SeFr6FVCBKZ0cTpMcIcoRDhWPFyh4U9Ikrd0SfiZ6gbvWRsK1+v4uHWvCrZ+89
5/9n/sL1WPX1JywVZ0ZtvrfLBSgIz22d/tQfvyPU7KpR5L3Tij2iA5Ciiqfu4oRy
46bpGRH7ZbJfwdM0PWpuixkA3egZcZA/1uqjpzRwcdyNKmJ/bvW9mP23ZXRP8efP
FltI3AeWhvaq7lFNCFiwhqpSNIkPcuk4UIhKrzdmm1dpCpUqHZK2WTnQmaV0zE91
oGzisnsxVoJIodeCKob0IC14OMVyhwoSgY+pXdwek7SA+Pggy10uWp3N+faEj/m/
NtHtdGC8JvexvY+OS50rDkjrV/+b1ZVW/fIBulTi1ZMCLxPL1notFJsmJoPT11as
yo8ctwQcq+Hi/yiiWRy7OsR/uGPq7l08bMiWX5rQ5wXiHsSU6L2aULaMXas1vHMJ
wb19jGZOP0HzdY1Eu4NZvpcARB4uTGXuE54LrY0OfIMpyB7K0IytryguFRCcZ84y
+BKll3fX6Q1uVRa5wSGD2xOlNQ6fkcqoHkViQ7tQWM0p9qfkFMA=
=/bW3
-----END PGP SIGNATURE-----

--twz4n2ienikp6hn5--

