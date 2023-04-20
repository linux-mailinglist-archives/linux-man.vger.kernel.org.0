Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D8C0E6E95CA
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 15:24:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230501AbjDTNYl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 09:24:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37820 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229960AbjDTNYk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 09:24:40 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 2356A469B
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 06:24:37 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id CA067672E;
        Thu, 20 Apr 2023 15:24:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1681997075;
        bh=/QyDw1ftrVWdQ/qu3C5YnQ2wK7ouJVTHSNMc2Hz6FU8=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=NdNEeVhvsxvGR73vr6Qk1+ENcA2OtWmRTWOqzglNoY9d/k39eiabmVPKzqnSmQ43W
         osG+v+kUOQbVCh8wPBPhWw+8V3+yf5emhPhXvgW3nzmUy6JxdNYoRJFqTAdbnLGykF
         zUrfhL/ziFPyucHtNTwE/vb6JRvC1myrtEbDRW/roAEZuUN82I+KkqU2ZppbM4It+E
         uikj3Uxpbcp07dytsIKZjOTj/pEa0K4medVbFIOgI7j987C+G6boyycm8mduqI2K79
         c8VN0U/mMGAyaHHaHxmhfeDhkYzosWx4CV7ovf4tXMKAARMI2HGjBZ9G3VkRUpK0PW
         K/nU/NzNEbDIQ==
Date:   Thu, 20 Apr 2023 15:24:34 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v4 1/6] regex.3: Fix subsection headings
Message-ID: <zkv5wxvyqzmmo44yp7pnhpjwgc7z6kt3m3335sigkk73pvvw32@udv556ayshi4>
References: <1df1b495-6e7f-b2b5-174d-f138b6bc3d5c@gmail.com>
 <6405717b8de85a370febef4f102676dc65c61113.1681995401.git.nabijaczleweli@nabijaczleweli.xyz>
 <32792f94-a74c-2956-1ae0-4538d27f1e5a@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="ionpyxlxldmmwjiq"
Content-Disposition: inline
In-Reply-To: <32792f94-a74c-2956-1ae0-4538d27f1e5a@gmail.com>
User-Agent: NeoMutt/20230407
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RDNS_DYNAMIC,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--ionpyxlxldmmwjiq
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

On Thu, Apr 20, 2023 at 03:13:54PM +0200, Alejandro Colomar wrote:
> On 4/20/23 15:02, =D0=BD=D0=B0=D0=B1 wrote:
> > @@ -159,7 +159,7 @@ or
> >  .B REG_NEWLINE
> >  processing.
> >  This flag is a BSD extension, not present in POSIX.
> > -.SS Byte offsets
> > +.SS Match offsets
> I think it might be a bit clearer as "Subexpression match offsets" or
> something like that?  What do you think?
Nah; in a significant amount of scenarios you don't care about
subexpressions at all, and the one thing you're guaranteed to get is,
well, the non-subexpression match.
Saying "Subexpression match offsets" to mean "Match offsets, including
of subexpressions" is more confusing, and which offsets are returned is
explained in running text.

Best,

--ionpyxlxldmmwjiq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRBPRAACgkQvP0LAY0m
WPG6hg//SJ4B4u1LChfHwji8vcQiNAYLDJ8YOMF6V2JDMX1a62VH232CKVa5cFkI
vEB2D0CBadicOdKmLWrgwvIHt9E2Ofx4UbMKHpjoZvJaLoTi/2W/TdtSl5L6yUyw
mJASgyTHdP5hAG7TT4ZDWnk2Ij0o/QVTvAN2cKAkUntY8IjLS8CfdrvQr5JRfqYO
NnSbUiF1CQJPdKhSwJEmMo48Hl1QrGHQS+11TJNTemLoew4VpvIslq1HIIMtBny+
e6ds174YjnvHrXfdCcdaKF5aNfvWdjNXNB+l1aEMok2gviXhNKVwB5c12BzYu8ZM
W7x72yTURutCYgfxv/vPplk8EAW8YOcWWEdm6ZiQ+wbjOxwZiC4Sq6PQBcmbT3uj
ZYHkMwwln7lOhCEFwq6cdMXmuvstfgqvubaZ4r+PRF1/LZan3XOhC9e0dopKm14g
mVj7SgRSdIvjubXItGgTxtEicDWiNASj+9Dmoz2iiOjW+sU6apv1ECpBbuWIEoiw
9CXEx4O+sM/Pjk3l6BaF5z0zNZs2Rf/QwCn9ZQaNsSM46Q6Plvckj7EIDehm/OKq
eB3hSdecGQ/wfaaZUhgqXt3e8x4MtEUIB+Fyd0Jzs4k6vfXr0FgH6Ig/s/oWS5zt
CegYfnRQ9lH48XnhP/YWkEbJVDEuH++LnfxPF2yd5NzmY0hLv0c=
=nFNG
-----END PGP SIGNATURE-----

--ionpyxlxldmmwjiq--
