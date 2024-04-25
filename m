Return-Path: <linux-man+bounces-812-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E345F8B1E4B
	for <lists+linux-man@lfdr.de>; Thu, 25 Apr 2024 11:44:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 20A7A1C21527
	for <lists+linux-man@lfdr.de>; Thu, 25 Apr 2024 09:44:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A17D84E08;
	Thu, 25 Apr 2024 09:44:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D/pR9/+0"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BCC884DFB
	for <linux-man@vger.kernel.org>; Thu, 25 Apr 2024 09:44:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714038288; cv=none; b=YcsQ7NcZh0Bc8JKfX4YyLA8Tfk3wtA50feFixwnK637H/7Wzyo4ABsMeCUTUJPYOy/Ob+NNpdERcI6BW5okZPIF5YJ9h0ESsMq1UmmMEULF559JXiswuz8ySINeOcRwr2db87v489RY9mKkLtFmO0+lpdFQF8KQ7y1/XVtcJDHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714038288; c=relaxed/simple;
	bh=FIxqmb0+6hOjHSU9YfrTbU8Hfaw37VTE6vxBuZBgNKk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PIdSvkL+ET6jF62J8D9GSUrNk46LFtAlXW0/lOCmD5ncisvOb5hPvbLTb87vDzrMYP5/DrTKh/KuUubXuSJjn67sUTyVMkk/k4HV3NScPUkE6Ja7dKeJEfXBlhXnueC/gCD47pNrI++Plw/5ncXoBy6h0rhOZOwTarkSnqUNLlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D/pR9/+0; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 445B5C113CC;
	Thu, 25 Apr 2024 09:44:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714038287;
	bh=FIxqmb0+6hOjHSU9YfrTbU8Hfaw37VTE6vxBuZBgNKk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=D/pR9/+0waCOKKd8dDr5xZ6aKvWDWQzL7racU4MWtEhC4GFhwoMqczt+qx18lPzZW
	 eVcLcaN/99g3zkgQJkSI+1m77X3G/91T3SAtt6JlK6Qvku31RlWYihO+PwHMkqxjXU
	 ArdE3CC8mV66HYOkU6o8+HcDm9d63i+7Tu0ynbcD/vJIBXTrR1Mo98Vln3gyJEmshe
	 McCFevMNJp+bKkdp4d6eXn2FoRYnX96rXwxkE7lBx6D1MRwuMQue/J3Xux5lPGHMCG
	 0Y8CuiOcNCr+Thh0GKlIQDWqaDwymIb7SESAkPgMajzM4deu/3vwYSLWbfMdPmmTYv
	 z7Jl+ua+DrGvg==
Date: Thu, 25 Apr 2024 11:44:44 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Simon Barth <simon.barth@gmx.de>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] slist.3: wfix
Message-ID: <ZiomDWBQvwzXT7EE@debian>
References: <20240424000949.65424-2-simon.barth@gmx.de>
 <Zijb98AgXyX6VgYU@debian>
 <ri344dcxgwoni4rlwmn6g5yu5zpw2a6tavmjocpldgxil7i7wm@rzzh7itpv6gj>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4TnX08VYl7krorJ3"
Content-Disposition: inline
In-Reply-To: <ri344dcxgwoni4rlwmn6g5yu5zpw2a6tavmjocpldgxil7i7wm@rzzh7itpv6gj>


--4TnX08VYl7krorJ3
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 25 Apr 2024 11:44:44 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Simon Barth <simon.barth@gmx.de>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] slist.3: wfix

Hi Simon,

On Thu, Apr 25, 2024 at 12:43:35AM +0200, Simon Barth wrote:
> On Wed, Apr 24, 2024 at 12:16:23PM +0200, Alejandro Colomar wrote:
> > Patch applied.  Thanks!
> Thanks a lot! The contribution process was easy and straight forward
> once I got the mail setup running!

Nice to hear that!  :-)

BTW, now that you mention the contributing process...  were the
CONTRIBUTING.d/* files easy to find and understand?

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--4TnX08VYl7krorJ3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYqJgwACgkQnowa+77/
2zJnsxAAqDOAGFfsUNyot+46IGMwZvB6unVDxGo/2tsleh/4MBYMZYnv527tgGO2
vi3ovBSPzjOXYTx9wp5+7ppb2e4OD8kb49Bt/Ei48+4WNBNXUJmOu0XSMGuTox4/
FAbVsK23uCPXvryqHbr4FFnCk2mZoddH9uscZJIoVWfJacudd48uoP2nf6wyenpe
B0/jR0ijOzyEupfao7wM0o6eSWgHzRga77MkNPAMmK4QalLOg2rMV2Zjs9EO7Bg/
4oKDYaiRGGXTnzqWjfXP7DsrxKqdy6XSTYMoZog3Uo7eJxbQwZ8HigYU0bYAVwpf
h62DWVz4N3bcUh8EHXUIZ+zKxunvw3siq0lz4RT7eFoCUePHNqeBso7vvQFs4hCu
T6lFVVn1SChWag3F3hee30nDHMHOexhjcIL16Ps2+FcaXsjsQPSPrKRK5uU+4HWx
ubTAfAGrcmt+dKBtcJBT1yFMTebgRNN0FGkpvAcSmVXzcYXPUhz7aNdzEn47+ChZ
Anm2M60Qv6E3hYYbH4omCnjr61DNZG1xLECpAT5UmQaRyA3iIFJXZUFNs8A+OrTK
a15G7T7EyIXS7kQ7qz7a9iTWSVOv8BYrcw7QNL48ZQqu5y1So+ZurxgjcWq93iVz
x/3P4NK40/vRYU2Lj8hlzqtlRZLujVCaJNZBwO2envjSgSep1xE=
=NUzP
-----END PGP SIGNATURE-----

--4TnX08VYl7krorJ3--

