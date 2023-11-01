Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 265517DE401
	for <lists+linux-man@lfdr.de>; Wed,  1 Nov 2023 16:47:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234336AbjKAPr2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 1 Nov 2023 11:47:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47116 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234029AbjKAPr1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 1 Nov 2023 11:47:27 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5D88C12E
        for <linux-man@vger.kernel.org>; Wed,  1 Nov 2023 08:47:06 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 29AC0C433C9;
        Wed,  1 Nov 2023 15:47:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698853626;
        bh=R+sVR1lJFADu54ZqVhswsRebJu3wCnT185KWdbAC1BA=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=qZUE+UJDG3ct8Gjk/wWHL1Q+UkCaVPSwGqJrVewa7m8g9EknfMo0AFhZ7hBrWcIFV
         PQbBptcuiUdtUFR62cR7Y17wp3hHiKV5r2sI2QfTilaZk3ctYubNtsCZdcKaMikqC9
         rhCv752bIFySE4LVX0jUwpazmcCNn2oUwaL0xtHGHTy5Qdtt0dUcJVrkESDNjfZZva
         Zb1NR/c0NjYKqlH1Srz9eW0iWDjMyEW/1zkBYFFR/Udatsh0hAzJ7LUlGbmGZjGXJR
         mC7iRlvfBMViU4EEV7AZ6kgIpifo1+Zq/88FyGa1MRNt1q9NaENOyMxcZHzxH6F2lX
         zxEUno476wcVg==
Date:   Wed, 1 Nov 2023 16:47:02 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page motd.5
Message-ID: <ZUJy9p4iXH-t4OOy@debian>
References: <ZUJaY2kc5oHbc9TR@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="IVz+Wt0Ve/pSfNZ4"
Content-Disposition: inline
In-Reply-To: <ZUJaY2kc5oHbc9TR@meinfjell.helgefjelltest.de>
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--IVz+Wt0Ve/pSfNZ4
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 1 Nov 2023 16:47:02 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page motd.5

Hi Helge,

On Wed, Nov 01, 2023 at 02:02:11PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    B<issue>(5)  B<pam_motd>(8) =E2=86=92 B<issue>(5), B<pam_motd>(=
8)
>=20
> "B<login>(1), B<issue>(5)  B<pam_motd>(8)"

I don't understand the report.  I don't find any pam_motd reference in
motd(5).  See below:

$ grep pam_motd man5/motd.5=20
$ git log -S pam_motd -- man5/motd.5
$


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--IVz+Wt0Ve/pSfNZ4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVCcvYACgkQnowa+77/
2zK2mhAAnWliuJKFIZRhhmTDoFBa+1fMbfJPAO2uv+7P4wvzgBHcjzW1PsFNbDt/
pjpNIRMpBX+8UApSVjGvwzQdCFSWBeHrIQWTMLkDmAxiwbJxCH05/flsdN3qvzHm
I+09yi3uEo/x1HyOItXBMqmGgfEUTYwXcf6LOHlsoZPtHqp5w3WDQuLYPqi2juoY
Wfu7R+jhsb1i7X+QiNmIWTCyXESHqlIZLXts3AoDbFI5odCRWIGRytp+nRjwlwng
39uZimXL/jq5caDipGyqf1vk5lBV/FMV/yuwvoGDVnO7OaHUZJhH1hLJl9qjdjAn
Ws4VBJJUieps7mLfmZ+7bluRYftOlqzFLR+7rVzxsaieMLfEs5A0crgshj4A9iNY
1kcKmDXhtEaJeGNhPuxKI4RSDV/0NRdXIlL/V2dtw90es6EpYkwCOS5qrMykwLkl
evtsFgAGav2Z8OR4TFNd35t+N+diHBP3ozepNmyCJWrJKiN5w8Z7syFQBZpXomx4
M4tsCrdpeySNK5qt+HWjMGF4/PR0ZvQhe4Lvu9qFDsuNTEBNbKNvfeMAuohtIiaE
A7EAJmQuxcmNiyVJTMVRbEBkkcAouHAOEHRgyTcIL0QfVq81CJEbQnLJh9NVaTb/
tVzwswN/fZLH6JEKAeLyzLLMngoGI5Z2/ihVmz8iKlIP7BIDzVA=
=SfY5
-----END PGP SIGNATURE-----

--IVz+Wt0Ve/pSfNZ4--
