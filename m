Return-Path: <linux-man+bounces-931-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 370C18C8D94
	for <lists+linux-man@lfdr.de>; Fri, 17 May 2024 23:15:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A5B091F222AB
	for <lists+linux-man@lfdr.de>; Fri, 17 May 2024 21:15:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EAED365F;
	Fri, 17 May 2024 21:15:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DfjejsdC"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FE741CAA9
	for <linux-man@vger.kernel.org>; Fri, 17 May 2024 21:15:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715980531; cv=none; b=QG/Kcav79HYMSha6zKYEx0LpL4omr0mNOzwfiht0S4/TVw3NeUTYpfsHOxY+fait4NaVgrCNnxGnUVjZHoaJR7S2RJkh4kK9jTBZhv//nbNQRTRZuokB46UcDdLlO0r/ImCVN0LoFX9sX9pj4BXdyC5bk9QZIYjLdSwJlEuCXTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715980531; c=relaxed/simple;
	bh=q9fmTUKIyI3xBMZO0CHI/zIMcL1zu3WT10O0+lLTXFE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iNwsRDykvlus64oYtc5VbreBNuTv/tynleydcVOJxBOwZuTDCZrYOMCEXuNK+vurTNagnFffzdj15gRvQ6I0UcIzsxz5O/9tzQ1ofhARHWurWeLkf6pHRW1oVpbHCo/3vzmbJ5y0sD4I7eubKMrccOtR1erAms05AI3Eb+XBp8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DfjejsdC; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DF182C2BD10;
	Fri, 17 May 2024 21:15:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715980530;
	bh=q9fmTUKIyI3xBMZO0CHI/zIMcL1zu3WT10O0+lLTXFE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DfjejsdCiSAmNSPT/rLPwMrrF4+NLL8cBuoWbqOMKdnI3M13bJb5gT4pwUHdN7PNB
	 KiYlSv4xHR/zEvZ8UqQAKsGWm1PGz6gJPZGFnyGQDfDDh7aE+CxoBFi9rygcA6WygW
	 uPAwXiRPRM950SSufefzp7hWNjyoIhvlNi6pV6uflx7zBxVdMAu542mxNtM8icoafc
	 vFYxTjD2xdsNxHmtZpHeFEo3jW5OFJk4se2S6u7oJWn0fM4Gph98++nxwRNuW/C1Iu
	 rMe5c2T2KqlaXLVqSKRs2Sk9YiH5nXELQB/GZXaW89WcG+TmbF0Vo48PlrdCiB2Tu+
	 KKAm+7URRl4UA==
Date: Fri, 17 May 2024 23:15:27 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Askar Safin <safinaskar@zohomail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] ip(7), ipv6(7): small fixes: network byte order, etc
Message-ID: <7uym5iaxpa6fzn6k3gauz2alld2crapfc2tzdrzhlgyof7wwtz@ll6smzsbzksv>
References: <20240511221801.27666-1-safinaskar@zohomail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ng2kbwxzmo2hs5f5"
Content-Disposition: inline
In-Reply-To: <20240511221801.27666-1-safinaskar@zohomail.com>


--ng2kbwxzmo2hs5f5
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Askar Safin <safinaskar@zohomail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] ip(7), ipv6(7): small fixes: network byte order, etc
References: <20240511221801.27666-1-safinaskar@zohomail.com>
MIME-Version: 1.0
In-Reply-To: <20240511221801.27666-1-safinaskar@zohomail.com>

Hi Askar,

On Sun, May 12, 2024 at 01:16:57AM GMT, Askar Safin wrote:
> Signed-off-by: Askar Safin <safinaskar@zohomail.com>
> ---
>  man/man7/ip.7   |  2 +-
>  man/man7/ipv6.7 | 10 +++++-----
>  2 files changed, 6 insertions(+), 6 deletions(-)
>=20
> diff --git a/man/man7/ip.7 b/man/man7/ip.7
> index 4fc9bde..8678979 100644
> --- a/man/man7/ip.7
> +++ b/man/man7/ip.7
> @@ -198,7 +198,7 @@ The
>  member of
>  .I struct in_addr
>  contains the host interface address in network byte order.
> -.I in_addr
> +.I s_addr
>  should be assigned one of the
>  .B INADDR_*
>  values

LGTM.  The type of INADDR_* are in_addr_t, not a structure.

$ grepc -tm 'INADDR_[_A-Z]*' /usr/include/
/usr/include/mit-krb5/gssrpc/types.h:#define       INADDR_LOOPBACK         =
(uint32_t)0x7F000001
/usr/include/netinet/in.h:#define	INADDR_ANY		((in_addr_t) 0x00000000)
/usr/include/netinet/in.h:#define	INADDR_BROADCAST	((in_addr_t) 0xffffffff)
/usr/include/netinet/in.h:#define	INADDR_NONE		((in_addr_t) 0xffffffff)
/usr/include/netinet/in.h:#define	INADDR_DUMMY		((in_addr_t) 0xc0000008)
/usr/include/netinet/in.h:# define INADDR_LOOPBACK	((in_addr_t) 0x7f000001)=
 /* Inet 127.0.0.1.  */
/usr/include/netinet/in.h:#define INADDR_UNSPEC_GROUP	((in_addr_t) 0xe00000=
00) /* 224.0.0.0 */
/usr/include/netinet/in.h:#define INADDR_ALLHOSTS_GROUP	((in_addr_t) 0xe000=
0001) /* 224.0.0.1 */
/usr/include/netinet/in.h:#define INADDR_ALLRTRS_GROUP    ((in_addr_t) 0xe0=
000002) /* 224.0.0.2 */
/usr/include/netinet/in.h:#define INADDR_ALLSNOOPERS_GROUP ((in_addr_t) 0xe=
000006a) /* 224.0.0.106 */
/usr/include/netinet/in.h:#define INADDR_MAX_LOCAL_GROUP  ((in_addr_t) 0xe0=
0000ff) /* 224.0.0.255 */
/usr/include/X11/Xtrans/Xtranssock.c:#define INADDR_NONE ((in_addr_t) 0xfff=
fffff)
/usr/include/linux/in.h:#define	INADDR_ANY		((unsigned long int) 0x00000000)
/usr/include/linux/in.h:#define	INADDR_BROADCAST	((unsigned long int) 0xfff=
fffff)
/usr/include/linux/in.h:#define	INADDR_NONE		((unsigned long int) 0xfffffff=
f)
/usr/include/linux/in.h:#define	INADDR_DUMMY		((unsigned long int) 0xc00000=
08)
/usr/include/linux/in.h:#define	INADDR_LOOPBACK		0x7f000001	/* 127.0.0.1   =
*/
/usr/include/linux/in.h:#define INADDR_UNSPEC_GROUP		0xe0000000U	/* 224.0.0=
=2E0   */
/usr/include/linux/in.h:#define INADDR_ALLHOSTS_GROUP		0xe0000001U	/* 224.0=
=2E0.1   */
/usr/include/linux/in.h:#define INADDR_ALLRTRS_GROUP		0xe0000002U	/* 224.0.=
0.2 */
/usr/include/linux/in.h:#define INADDR_ALLSNOOPERS_GROUP	0xe000006aU	/* 224=
=2E0.0.106 */
/usr/include/linux/in.h:#define INADDR_MAX_LOCAL_GROUP		0xe00000ffU	/* 224.=
0.0.255 */

> diff --git a/man/man7/ipv6.7 b/man/man7/ipv6.7
> index d9241cc..e38658f 100644
> --- a/man/man7/ipv6.7
> +++ b/man/man7/ipv6.7
> @@ -105,7 +105,7 @@ Only differences are described in this man page.
>  .P
>  To bind an
>  .B AF_INET6
> -socket to any process, the local address should be copied from the
> +socket to any interface, the address should be copied from the
>  .I in6addr_any
>  variable which has
>  .I in6_addr

Sounds good.

> @@ -138,14 +138,14 @@ its source address will be mapped to v6.
>  .EX
>  struct sockaddr_in6 {
>      sa_family_t     sin6_family;   /* AF_INET6 */
> -    in_port_t       sin6_port;     /* port number */
> +    in_port_t       sin6_port;     /* port number in network byte order =
*/

You probably want to also check <man/man3type/sockaddr_in6.3type>, where
you'll want to apply the same fix.

BTW, we should consider removing those definitions from ipv6(7), and
refer to sockaddr(3type).

>      uint32_t        sin6_flowinfo; /* IPv6 flow information */
>      struct in6_addr sin6_addr;     /* IPv6 address */
>      uint32_t        sin6_scope_id; /* Scope ID (new in Linux 2.4) */
>  };
>  \&
>  struct in6_addr {
> -    unsigned char   s6_addr[16];   /* IPv6 address */
> +    unsigned char   s6_addr[16];   /* IPv6 address in network byte order=
 */
>  };
>  .EE
>  .in
> @@ -154,14 +154,14 @@ struct in6_addr {
>  is always set to
>  .BR AF_INET6 ;
>  .I sin6_port
> -is the protocol port (see
> +is the protocol port in network byte order (see
>  .I sin_port
>  in
>  .BR ip (7));

LGTM.

>  .I sin6_flowinfo
>  is the IPv6 flow identifier;
>  .I sin6_addr
> -is the 128-bit IPv6 address.
> +is the 128-bit IPv6 address in network byte order.
>  .I sin6_scope_id
>  is an ID depending on the scope of the address.
>  It is new in Linux 2.4.

LGTM.

Thanks,
and have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--ng2kbwxzmo2hs5f5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZHyO8ACgkQnowa+77/
2zJPiRAAqzmrYq3UtR4HnB7PrhG55M0rvZhVJoS/xRcscKyEO5Rl6wqTGMlfA5wa
LMXaUjdVvij+CeBXBE8grJHSPr1POIlDkLp83tvGPIO3Y3KA9XWWUGNOVtXd66io
2vK5YqsYcubABupCzcFca89Vr0/tqsRJUv9FxmLrPvxmswtEJ9mkeqy/p9FuGzoB
Eb1CXVGms93TGIpuIOa0pwj1dPIrckDAKiMMgkplH57/7xeAuzwl2F+r/McPymtH
/HKNElSTVcYP6Nwsk+Fw6HCSCGas37t/A6xxVMR9MtwnmUh98ZLvQluBjNVYdMMo
egbqd4T/YB2FkLhyXDZi3YVk5qIqAmaR3zejKf6q0YZVR6VTGzM0B92yV1YZAeoQ
Z/V0Y9thKyh+hfSs1HEFYaoM0XEADJGqoRpWeCdMUU3zuAET98H4g6NmHdZ8q1A8
uUM2C3JdIYLC3EHArD9RAbiXmmhWP5eKrlTNjJ3v2gOgG3ShqrykepV3B/rs0Kmo
JzmADnvEqtDcXjvpuHvapJ+UXq5jdXamVQkZbyn3mxDPebN1ZSQYYxuKkZ10HjVv
uSZO24efhijh+UZdu3XVc1WeT+XBXw8GEjpXy8hD1hZrcHWKkZJhphA2zaumrGFp
bUpi1fuQGI68P6LTlsKk6XcP06iJUKUSFRdLHBG6KXLo+zlBYI8=
=UNBF
-----END PGP SIGNATURE-----

--ng2kbwxzmo2hs5f5--

