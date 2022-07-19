Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3850757A17D
	for <lists+linux-man@lfdr.de>; Tue, 19 Jul 2022 16:28:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235290AbiGSO2T (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 Jul 2022 10:28:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46330 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234628AbiGSO1q (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 Jul 2022 10:27:46 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id BDA94422E3
        for <linux-man@vger.kernel.org>; Tue, 19 Jul 2022 07:14:23 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id B6EED68C;
        Tue, 19 Jul 2022 16:14:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202205; t=1658240061;
        bh=zQk55WO+ywzYsgslBBVQZezs17bBGoU1dYRi+kNKvy4=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=OHDqynxl+xduleuYKxZLpxlzMcchxSzYr23kXW9xqv6dGOLhwaf3FWYdWUCXzzfLV
         a4PuU/hhNvlhc0FppYmAsPG285tBF8yO05J7DyUOziInrcnHYvZc+/Dc+0sBxH+PsJ
         vaC2Vf+SnT/jrD2Uh3xYMawDqobAkoHM8qoQlea4uWNbTBrtcPodLa8QnwhAE0k70A
         blnC0DznRSOYyCdlJeNdd4HZPdzgJv3rrk1JatYfm8bO4pOnzMmGjH+MXe+6gHpjHt
         YReU3AAEdd3ylelTbNstKDz9TIkDugUTTwxbkfv6ed3djUZ5pOU2hfKYHSdBJcX/Z8
         eq6y2K011An4GaTl3btkFqn1rRNNDF055q7SEOv8Zbo0jv2nTopI7uEpCzGcaCwVtW
         X4/cBg389S93KE+3MI7cGHpL28Oj0rswSRP1arDkjos9HrYOxHFEugIw3pOLK1RqTl
         Ng/ER2EdFuzAi+ng8y2fKaE/ZAGW+9oiLlmIAB7DgPXuu604oWvuGdgcYDpbS3kQGg
         mU4+m/x1P8JZ0UGvdtv+OQjkRX9r1CWvQMDSXTVG+Ki+U+5j+gVJFyC/zozWp1ThGy
         +YVgWqOwdpmEFlpM2Bsm0ej5BrZohJ65A01gywFseLuuv712ysz7wCiDAwsi7rz47V
         4Om0xpthW7ZC29xbgmwQmUNQ=
Date:   Tue, 19 Jul 2022 16:14:20 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH 2/5] tm.3type: align ranges
Message-ID: <20220719141420.5bhgjbqxtev4kx2d@tarta.nabijaczleweli.xyz>
References: <62c1b6748d2faa6263264b9fcaa064495357441b.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
 <7125737470fced1f56ee48912df456c4eb941ff6.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
 <e1f74540-9a40-1e6a-f334-594b42cfe6a5@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="czlneasbcsunj42x"
Content-Disposition: inline
In-Reply-To: <e1f74540-9a40-1e6a-f334-594b42cfe6a5@gmail.com>
User-Agent: NeoMutt/20220429
X-Spam-Status: No, score=0.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_SUSPICIOUS_NTLD,
        PDS_OTHER_BAD_TLD,RDNS_DYNAMIC,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--czlneasbcsunj42x
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 19, 2022 at 01:44:22PM +0200, Alejandro Colomar wrote:
> Hi =D0=BD=D0=B0=D0=B1,
>=20
> On 7/19/22 03:56, =D0=BD=D0=B0=D0=B1 wrote:
> > This, to me, makes these much more readable
> >=20
> > Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>
>=20
> I like the concept of the commit, but I wonder if we can do it in a better
> way.  I was wondering specifically about moving the ranges to before the
> short description, so that they would be aligned naturally, without needi=
ng
> so much whitespace.
>=20
> What would you prefer?

I think that either of
  int         tm_sec;    /* Seconds          [0, 60] */
  int         tm_min;    /* Minutes          [0, 59] */
  int         tm_hour;   /* Hour             [0, 23] */
  int         tm_mday;   /* Day of the month [1, 31] */
  int         tm_mon;    /* Month            [0, 11]  (January =3D 0) */
  int         tm_year;   /* Year minus 1900 */
  int         tm_wday;   /* Day of the week  [0, 6]   (Sunday =3D 0) */
  int         tm_yday;   /* Day of the year  [0, 365] (Jan/01 =3D 0) */
  int         tm_isdst;  /* Daylight savings flag */
or
  int         tm_sec;    /* [0, 60]  Seconds */
  int         tm_min;    /* [0, 59]  Minutes */
  int         tm_hour;   /* [0, 23]  Hour */
  int         tm_mday;   /* [1, 31]  Day of the month */
  int         tm_mon;    /* [0, 11]  Month            (January =3D 0) */
  int         tm_year;   /*          Year minus 1900 */
  int         tm_wday;   /* [0, 6]   Day of the week  (Sunday =3D 0) */
  int         tm_yday;   /* [0, 365] Day of the year  (Jan/01 =3D 0) */
  int         tm_isdst;  /*          Daylight savings flag */
is fine, and other options are strictly worse, but went with the former
because (a) the ranges also align the comment trailers so it's easier to
read and (b) it makes more sense to have "description [domain] [bound]"
than "[domain] description [bound]".

I personally prefer the former but the latter would also be fine.

>            int  tm_sec;    /* [0, 60] Seconds */
>            int  tm_min;    /* [0, 59] Minutes */
>            int  tm_hour;   /* [0, 23] Hour */
>            int  tm_mday;   /* [1, 31] Day of the month */
>            int  tm_mon;    /* [0, 11] Month (January =3D 0) */
>            int  tm_year;   /* Years since 1900 */
>            int  tm_wday;   /* [0, 6] Day of the week (Sunday =3D 0) */
>            int  tm_yday;   /* [0, 365] Day of the year (Jan/01 =3D 0) */
>            int  tm_isdst;  /* Daylight savings flag */
Not columnating at least the domain and description is, to me,
a no-go from a readability stand-point.

Best,
=D0=BD=D0=B0=D0=B1

--czlneasbcsunj42x
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmLWvDoACgkQvP0LAY0m
WPEv+hAAmj5l+s59XLWwk1AHGAXQnpRRFgmqGgvEKLgMYjEqGpccg9nH9W+KpuTn
+xJtCO5VQX4cn/YXNfeKJNHW7HDEv2DSApf9Rv3FgAT2+jNf5hegQCx/g0W+lwr6
/EK+8JuM+8AMZbWiALzzsCRk001ssFRKDyo0jMSaSsdQNG6oWl8z3dOgTYtVZZVa
mdkVvhvsswQ0QMGFX0HmfmUXayC9fBpF3M3SprAy82YXV4tXuMULHRrj254z1bSu
mfifjV4UN5EbnZCJwx10iMinpnBRUy5BcVoZm2A09nSxDvS/+AajDfQ/PrMWA7CB
mWJPqGfJPgOvMY9YrCRZ5dBHRzqaGdDzkICe53wF5zIuMnGxA0ouuf8HnuO7/QCD
LXnWqSQEVrtXeShulEHMMDOsEPIfsiFh0j++iQW3PivDKWBhiQ4B8GwJz0+2sHg0
P5zyRaDubeHWC0X5EA55a+UDnZgfEDHMQTafX6bjN6dwehKhC6LueHrFuPqC/l3X
a6CjzU6gucfVjXDXTlAwP9Uu/DO9+TsC/4bol5rP3QSEJX6ZIaYquStAF7R+TPFP
zYCNNJLowo5AI8K752ry3IIRZYdYZIcPpiMAJFVDqD/Il1fCXiHcvcaNLyYq7N31
igZQqnhqZDehN8HDmrnu2ZTFl+obzB1k1AJOePkrPOJK2y0B22Q=
=6d4Y
-----END PGP SIGNATURE-----

--czlneasbcsunj42x--
