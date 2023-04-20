Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3DAE56E9C7E
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 21:33:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231855AbjDTTdg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 15:33:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50744 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231206AbjDTTdf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 15:33:35 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 9ABAA19C
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 12:33:31 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id E617463E6;
        Thu, 20 Apr 2023 21:33:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1682019210;
        bh=gevQ0lQS4gZzr9m807q1Yxf5dnYwaeA0L69qb27VXTU=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=OLlXZZS9KzkkxdW+cRoRUQEvdWIb0Mb4LI7PiTXiFi7W7KBPizIpBToneOd7k2oQg
         7PfjIqlY81JX2j/5nxtik5GVu9UAVEsJmx1Ca6msjMCjymC06mp5MNqqLcKbo6QQLp
         y4wvKvKYkY0zYk+wH5DIII83KpSO8sLoUU/7TbWtB9pv1ttH3uyH/ULkHeYn1+nQL5
         vYim2dxbHwo1dUrhCaXPA6GoJCG/HYo7on3wzF3YjDsNhgG4zgiXW0Jm1VRllU+vPj
         VHnTMuVKCwz3ru52nztptAYJ1eDNmZR9NoLyRKn4cSsIoktzsAoax4MWqzJukyJPyq
         0eQucmR9rLwbw==
Date:   Thu, 20 Apr 2023 21:33:29 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v5 4/8] regex.3: Improve REG_STARTEND
Message-ID: <btjezo6u533tbwbwgjnwxwu5isukgosvfvinlzylops7g457dt@iwv7ckcoidhn>
References: <6405717b8de85a370febef4f102676dc65c61113.1681995401.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
 <fd1a104d6abc70a2450b17a6b424ca8e20897634.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
 <1735c494-c165-87d9-8660-865bbfce709a@gmail.com>
 <uubrf6suz7z2kw4el7i5wbzzdxywcqjwhcyqxkdddlwabve5p2@uupjducqbdgk>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="kwgichd7oonn76qd"
Content-Disposition: inline
In-Reply-To: <uubrf6suz7z2kw4el7i5wbzzdxywcqjwhcyqxkdddlwabve5p2@uupjducqbdgk>
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


--kwgichd7oonn76qd
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 20, 2023 at 09:30:06PM +0200, =D0=BD=D0=B0=D0=B1 wrote:
> If REG_STARTEND, pmatch must point to a valid readable object.
> (Naturally, if you pass in uninitialised memory or a null pointer,
>  then you get UB.)
> nmatch is not consulted and has no bearing on this.
This is all to say:
  regexec(&reg, "str", 0, &rm, REG_STARTEND);
is valid, looks in ["str"+rm.so, "str"+rm.eo),
and doesn't change rm, whereas
  regexec(&reg, "str", 1, &rm, REG_STARTEND);
is valid, looks in ["str"+rm.so, "str"+rm.eo),
and will update rm with the match, if any.

--kwgichd7oonn76qd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRBk4kACgkQvP0LAY0m
WPHUIg//ZdqeNqj+OyU+aFKjYYQ4E5VnnhpKudp7/wvvWi6KBWT7443Sgmf8q6b5
ag6ec//Dtg1paqEQjreB6G6s9SMyDyimFeIF+pZAu5PSqgeyCjOoLQ0bv80MrpeC
8qqpgaNmzy2ErdvxK/6TrmiKSd7zm2cMnV1fcErMFregVguoIuu7xtB/rvVvJu4O
iMgLybwJTxepBCvTlFLFSr/sYCcO2t3NZaIdqq6xf5GfwuaRcnGpHbqVkcI70GNi
AkvVZhXAUl1FBoq8eq0q7hGkVY4buHJoZivofJMmjI592dQMRk6Pm4w3OCsL/dTo
QiI30+Cd75C+f7DWvPcPoJr1jquX85QZWtAS5q1cheAtjpXMB7gKuVFXn2wp7Nw0
B3U9tP6qXfA6c1Jp/u00ffC2Gyjy+viPBTr/Se3FuStLNwvvEIUoEggYaNphyaM7
p+8KX30ot44ERsOevegcXShoK72nf1MHuOLcpsT1NAe1Hx/Vf6N30woO74gvARqN
/76pBjz49ZQqsfaVxs6oTgrInGa64Sngi6GWRovOpfUD3KhhHeW5YcGnYUNuBPD3
ATduiNr+umUG1aj1dgbNR5PkBDlqJOZ3b6/EUdkWnqlvIdTlF3B+rHcWkFywL13i
UAriWQDGlT5S6cTVqGnKp+7q/Ke5C8QWNpBAvB+GdCObL76JWio=
=6kQ7
-----END PGP SIGNATURE-----

--kwgichd7oonn76qd--
