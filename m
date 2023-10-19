Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 62EA27CFA69
	for <lists+linux-man@lfdr.de>; Thu, 19 Oct 2023 15:10:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235442AbjJSNKG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 19 Oct 2023 09:10:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38532 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235482AbjJSNJ6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 19 Oct 2023 09:09:58 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E22E8D7F
        for <linux-man@vger.kernel.org>; Thu, 19 Oct 2023 05:54:36 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C1D97C433C8;
        Thu, 19 Oct 2023 12:54:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1697720075;
        bh=5CA7V0HFD9gEmNTY6B07USieE0v9IGP9C8qJ6qe/cZg=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=FrYkmg7Z0rRpuMXyi1//DfMawNgfwDfuV8UKNky+hSc+/Hk9fKOcZybmRoKDhNecw
         lyI5cw0E/doitApPYDVDZUlsimmttWGUDEyjCHNeP3l3c4Su5jExbO8ncxbvvfRYzQ
         H5N7cmPxDubSXMXbA1y4Pwf0WgivZL40o+0xMYaMOwOEl2oClgYb7+NIs9gwLM301e
         GUnUVJhT9GTkVoQbM4e8yspE9vT4bMD434oXxTL0fgRmxcdeKE8r//C+kKEjHamvzy
         I/0XZcM069swcxX2ciMYc+96GMxt2+2tYY5UsYfdqfsb0yh9wsWOlFRRrsQVldsblY
         sC8uZ0DTUqhdQ==
Date:   Thu, 19 Oct 2023 14:54:32 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>
Cc:     linux-man@vger.kernel.org, alx.manpages@gmail.com
Subject: Re: [PATCH 2/5] ld.so.8: Clarify LD_PROFILE in secure-execution mode
Message-ID: <ZTEnCNnPtM39k7_N@debian>
References: <20231018172104.1196993-1-adhemerval.zanella@linaro.org>
 <20231018172104.1196993-3-adhemerval.zanella@linaro.org>
 <ZTAvvolND_9zrcRL@debian>
 <d961437f-8dfb-46b9-9fb0-210daa5c6950@linaro.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="m08o+817fxS4/Bxm"
Content-Disposition: inline
In-Reply-To: <d961437f-8dfb-46b9-9fb0-210daa5c6950@linaro.org>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--m08o+817fxS4/Bxm
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 19 Oct 2023 14:54:32 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>
Cc: linux-man@vger.kernel.org, alx.manpages@gmail.com
Subject: Re: [PATCH 2/5] ld.so.8: Clarify LD_PROFILE in secure-execution mode

Hi Adhemerval,

On Wed, Oct 18, 2023 at 05:47:19PM -0300, Adhemerval Zanella Netto wrote:
>=20
>=20
> On 18/10/23 16:19, Alejandro Colomar wrote:
> > Hi Adhemerval,
> >=20
> > On Wed, Oct 18, 2023 at 02:21:01PM -0300, Adhemerval Zanella wrote:
> >> Different than specified, glibc 2.2.5 does not ignore LD_PROFILE in
> >=20
> > The text being removed talks about glibc _before_ 2.2.5, that is,
> > every version until 2.2.4.  That doesn't match the commit message.
> > Please check.
>=20
> There is no different between 2.2.4 and 2.2.5, LD_PROFILE is always
> accepeted for secure-execution mode, while LD_PROFILE_OUTPUT is=20
> ignored (the default path is used ("/var/profile")).
>=20
> I though it would make clear to specify the profile path only on
> LD_PROFILE description, but I don't have a strong preference.

Sorry, I misread the patch.  :)

Cheers,
Alex

>=20
> >=20
> > Thanks,
> > Alex
> >=20
> >> secure-execution mode.  Instead, it uses the default LD_PROFILE_OUTPUT
> >> (/var/profile) folder.
> >>
> >> Signed-off-by: Adhemerval Zanella <adhemerval.zanella@linaro.org>
> >> ---
> >>  man8/ld.so.8 | 15 ++++++---------
> >>  1 file changed, 6 insertions(+), 9 deletions(-)
> >>
> >> diff --git a/man8/ld.so.8 b/man8/ld.so.8
> >> index 5b5c22825..74286d583 100644
> >> --- a/man8/ld.so.8
> >> +++ b/man8/ld.so.8
> >> @@ -664,7 +664,7 @@ Profiling output is appended to the file whose nam=
e is:
> >>  .IP
> >>  Since glibc 2.2.5,
> >>  .B LD_PROFILE
> >> -is ignored in secure-execution mode.
> >> +uses a different default path in secure-execution mode.
> >>  .TP
> >>  .BR LD_PROFILE_OUTPUT " (since glibc 2.1)"
> >>  Directory where
> >> @@ -672,16 +672,13 @@ Directory where
> >>  output should be written.
> >>  If this variable is not defined, or is defined as an empty string,
> >>  then the default is
> >> -.IR /var/tmp .
> >> +.IR /var/tmp
> >> +or
> >> +.IR /var/profile
> >> +in secure-execution mode.
> >>  .IP
> >>  .B LD_PROFILE_OUTPUT
> >> -is ignored in secure-execution mode; instead
> >> -.I /var/profile
> >> -is always used.
> >> -(This detail is relevant only before glibc 2.2.5,
> >> -since in later glibc versions,
> >> -.B LD_PROFILE
> >> -is also ignored in secure-execution mode.)
> >> +is ignored in secure-execution mode.
> >>  .TP
> >>  .BR LD_SHOW_AUXV " (since glibc 2.1)"
> >>  If this environment variable is defined (with any value),
> >> --=20
> >> 2.34.1
> >>
> >=20

--=20
<https://www.alejandro-colomar.es/>

--m08o+817fxS4/Bxm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUxJwgACgkQnowa+77/
2zIJCg/+Lw/Q7Y0jnyKK18IMRBxamCDnMwawDHCUFtyil3igrLh52ufBEj/KfRYq
6ZbkYBfDaxQXIpF8KbLZZ2Fq1k68x+KxuRIlzN/1741cGnEvl8KojKHHZOiZNRtl
/A2sDBlsJGH/PQFZzNzh/njuIKqo85Qgb7oMF84u7lsolUTHzZY5isvC6xpRu/+L
LYfEtAsJCq5TYniB+6owUp2slOXPZWUoJnUUouYEVcXrrERwrTgyW+XdQQxTs8lD
q6+VPTEe3Hl8rhi/WqN3lF5z3eNpYYe9yALus6rVy3AHZe+CGBk+ncvRcA83EiQD
YgjmN/VgVudARlAHreSiOqup42prYm7ZGB6xONVdOius7ZaSccSaQ+e5DDONyN+x
hI6prtzuP9b1PJ0n6PiW+2zcEaln7v/ckNP/iOcMDgxVQUXxMmrgA271G3Xog154
0NkKkZOEbxPFh4aB3psw4fN2kr9vVcpSpiZrjfptCmqaUiTaGqU67XgZfrBGMxEJ
twWNzsctA7ANEnucz9cslhaqoLfGxKOvz6iPkiE7YtZz6JmA0DAj7k2eGYmSSoc0
IsF7y6OWArwCSF1N48dS43G8u4Xjux9r/ZHVbbo0GoJrcUs6vDu+g/DPCUJqO86E
XPPSIc2BGYc9XWRCFG+4IxUx/cSmSCOF+vlBoNBWoqU1DewhNkE=
=xGWm
-----END PGP SIGNATURE-----

--m08o+817fxS4/Bxm--
