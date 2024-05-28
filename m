Return-Path: <linux-man+bounces-1006-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 20EC78D1737
	for <lists+linux-man@lfdr.de>; Tue, 28 May 2024 11:24:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9EEE6283AA2
	for <lists+linux-man@lfdr.de>; Tue, 28 May 2024 09:24:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0F5214E2E0;
	Tue, 28 May 2024 09:24:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LBJFgwjb"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1FC16E614
	for <linux-man@vger.kernel.org>; Tue, 28 May 2024 09:24:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716888253; cv=none; b=n28gy2jG1t31pssuhvSjiQhjIjfX4qfsQQXw5GFAXISivIC6c46q+tr2JZHtqQ6I4yXv7w8g3LVB+VgTOPBjuftP1MgKZ5fBfFl3aGbeiYlvXpBheTgakJ7pqsxqmVWefoOyUQtHZrUg1Ubo6CBiQh+j29aSK/5etXD5GkvhxBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716888253; c=relaxed/simple;
	bh=jf/kX4wVa7yo55hQTwmknxDD9yL8NqSOIVsikYCbDCQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=P4qVFHB1gjUyU28eA1QJNAb4r4161qNP97N+Kp/ZRkgOWTxY1DJYHXFC72ERDBEMXDk8T0c6NThlysSKMmjFqs+jtH5dx+zb+qHBQ2wREbzHEo5XMI1HcdFLFhoTTPn+0BR5eT13q/bemCVnKm6xuHnS7/yoDPWcnN0u+ZTLt6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LBJFgwjb; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 86C20C3277B;
	Tue, 28 May 2024 09:24:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716888253;
	bh=jf/kX4wVa7yo55hQTwmknxDD9yL8NqSOIVsikYCbDCQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LBJFgwjboFhAqoV58ot4iZK7Nj0xJ2ba/FpK4Gd/PV7v/9rFj6xzglciT0/fSysbL
	 XabBAKul0oScJuzTL8fLuqpx9Z/q5AKHYUw5oIAFVzASBGKRj9P+qTiodVLP2LxAhT
	 l2JuRf897qrmCcbJYbw8GvbcmN44WcouhrUs4p/6vN8huyUymsKJU983FUjm2uevBa
	 hPw7n7Kk4uw2+0F6DQQu4aMbKvYNQAIzrHB2l6kKE5f/XjI2G00Vls+jZQBKV1/8bd
	 LHoIh61oiw078HCsOrXxmSWXWWh3rHe8cT9vTEqZgUv7nx2i/XjUUdmIN1byjEBLA0
	 bZJaphvma5Ygw==
Date: Tue, 28 May 2024 11:24:10 +0200
From: Alejandro Colomar <alx@kernel.org>
To: libc-alpha@sourceware.org
Cc: linux-man@vger.kernel.org
Subject: Correct way of calling prctl(2) (was: Sashimi of prctl(2))
Message-ID: <vuuanrtyoq7abctrlmfggqqc7vjw6v64ubbyeijvyngnw7xead@yehc5po76nzf>
References: <eofw4itya3kwaznneoizgt3dspfa4h7ttrw6ehshfrksj3wmst@xwjxpi3iro6d>
 <ddbdyaiptesjalgfmztxideej67e3yaob7ucsmbf6qvriwxiif@dohhxrqgwhrf>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="inrgrw34wq6a4fda"
Content-Disposition: inline
In-Reply-To: <ddbdyaiptesjalgfmztxideej67e3yaob7ucsmbf6qvriwxiif@dohhxrqgwhrf>


--inrgrw34wq6a4fda
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: libc-alpha@sourceware.org
Cc: linux-man@vger.kernel.org
Subject: Correct way of calling prctl(2) (was: Sashimi of prctl(2))
References: <eofw4itya3kwaznneoizgt3dspfa4h7ttrw6ehshfrksj3wmst@xwjxpi3iro6d>
 <ddbdyaiptesjalgfmztxideej67e3yaob7ucsmbf6qvriwxiif@dohhxrqgwhrf>
MIME-Version: 1.0
In-Reply-To: <ddbdyaiptesjalgfmztxideej67e3yaob7ucsmbf6qvriwxiif@dohhxrqgwhrf>

[Adding libc-alpha@ for some doubts]

Hi!

On Sun, May 26, 2024 at 01:27:43PM GMT, Alejandro Colomar wrote:
> On Sun, May 26, 2024 at 01:07:24PM GMT, Alejandro Colomar wrote:
> > I'm considering making sashimi of prctl(2), similar to what I did
> > recently to proc(5).  Another precedent is in ioctl(2).

I'll call the pages with names such as PR_CAP_AMBIENT(2const) and
PR_CAP_AMBIENT_RAISE(2const).

While doing that, I changed the prototypes in the SYNOPSIS to things
like

     int prctl(PR_CAP_AMBIENT, unsigned long op, ...);

and

     int prctl(PR_CAP_AMBIENT, PR_CAP_AMBIENT_RAISE, unsigned long cap, 0, =
0);

Which makes me wonder.  glibc implements prctl(2) as a variadic
function, so those 0s are actually of type (and more importantly of
width) 'int'.  This means a user passing 0 is leaving some parameters
uninitialized.

=46rom what I can see, glibc does no magic to set unspecified parameters
to 0, so this means passing '0' results in Undefined Behavior.

I guess I should document these as 0L in the SYNOPSIS.

     int prctl(PR_CAP_AMBIENT, PR_CAP_AMBIENT_RAISE, unsigned long cap, 0L,=
 0L);

All of the software I've seen out there using prctl(2) either pass 0 (as
the manual page had been suggesting), such as in shadow:
<https://github.com/shadow-maint/shadow/blob/71e28359d12491727b2e94c71d2e1e=
1682d45a02/lib/idmapping.c#L161>

	if (prctl(PR_SET_KEEPCAPS, 1, 0, 0, 0) < 0) {

or don't pass anything at all (coreutils does this):
<https://git.savannah.gnu.org/cgit/coreutils.git/tree/src/timeout.c#n449>

	if (prctl (PR_SET_DUMPABLE, 0) =3D=3D 0)

Am I missing something or are all of those calls buggy?

Some prctl(2) calls report EINVAL when the unused arguments are nonzero,
while others simply ignore it, so maybe I can document the ones ignoring
the unused arguments as shorter calls:

     int prctl(PR_SET_DUMPABLE, unsigned long dumpable);

And document the ones that report errors as using 0L:

     int prctl(PR_CAP_AMBIENT, PR_CAP_AMBIENT_RAISE, unsigned long cap, 0, =
0);

(BTW, util-linux seems to have this one wrong:)

<https://sources.debian.org/src/util-linux/2.40.1-2/lib/caputils.c/?hl=3D12=
3#L123>

	&& prctl(PR_CAP_AMBIENT, PR_CAP_AMBIENT_RAISE, cap, 0, 0) < 0)

What do you think about this?

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--inrgrw34wq6a4fda
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZVorMACgkQnowa+77/
2zJRhw/7BKGH26lIiLrsLEis/sblh9GwEjfcrSb8oIpX4FCIqlTwN22IvAhYkr2o
ncYwNpabqydKVQCgurxFlxnJ9EEU0xdn5wa3wWL5bQKaRIDdwN7q+VKZI6QVbTnb
R/87Fh2B4cjEW9Y5Ar/nZ1nQ4KtgUUvcTX1D+g9CSHHYG2WeXg//AAjQodOYjcuA
kJdsNKADiZ36X39qmiOGnCKLA/X9PPUGVEq0JKZl7sCxaf/ThNpyFFqJ39iyxw85
lF5Foi7ErtDzBZfwBRWToqRhsuc4I51rfiLJwwAvwvp66zSYlBdgYJMayZXVFlqz
sWS0hrx0Z0LNeLt6CNVWips8VJtWML8gQ0zxeJSgvj0N/YGBmH3vnJVa8to7xLa+
LlDhwIiv1SIX0cvHk3qat8wIaJAhZh75s66KR6ZjgmsX7VSKHRhXBnqZEa9JP4W2
3SikskHA9gWj3IUGOx1M+9c5qUNf0k0ovod8y13PuzUJKQD9puAulP4xumGYbuWb
88ZBc6+hjIud9Y5k3QhKeY6uOhzYx5Nn9E8HphP+HjhpWGN/F8wclffPnxQ8xmLv
9aMq1UqUdwDvzYv75Aon5BQakqA7jcraOlkWAmqjXxppy8beGB9utDUYkgV6rK1w
yQ98iM6cTESt8E674R6REgTsDbqAzD9DYPZl7eMU+qVZt3pdoTM=
=Ki6s
-----END PGP SIGNATURE-----

--inrgrw34wq6a4fda--

