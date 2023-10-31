Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A998B7DCD0D
	for <lists+linux-man@lfdr.de>; Tue, 31 Oct 2023 13:37:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344290AbjJaMfq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 31 Oct 2023 08:35:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36650 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344275AbjJaMfp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 31 Oct 2023 08:35:45 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 480C897
        for <linux-man@vger.kernel.org>; Tue, 31 Oct 2023 05:35:43 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 21F94C433C8;
        Tue, 31 Oct 2023 12:35:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698755742;
        bh=KZ1ANlOeUFCAgVTeMMUwZa3CUxX1szTU3RJfSE+SXNs=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=if1uL42VQcmJVAkOfSC+fGNZntTBJJfLjTlnFMbPg+mk0UMXuf9PG6WsfTWVbkNMT
         MEtREGWB/5kvnOhK4hbhSl7hvWGeQAzbuSYqTBxYdoPtagUYxcoZ3MTtI1i+1SW7LL
         /Z8Bqi9X5h2kylhdzIF1wwL/jv0n6EqhFjlH5lXGN8Awem8nrQ92wNF2RtCCZ55CMy
         b2j5d19omqp7TgrUZPunlVKTYy5yAhRGwcvNuafIJtgf+/fwaK8SqYtAHt9Lp3UJcx
         vy2n1HeasXGi7oDEQnjtkBK+TPh/yE1I0juVXu9BgGqp+p0oThCNKvI54h5yh/r6GM
         zC/XXUnluRIkw==
Date:   Tue, 31 Oct 2023 13:35:39 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Stefan Puiu <stefan.puiu@gmail.com>
Cc:     Adhemerval Zanella <adhemerval.zanella@linaro.org>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH v4] ld.so.8: Describe glibc Hardware capabilities
Message-ID: <ZUD0m0U4LnYeC4RY@debian>
References: <20231026182802.2194109-1-adhemerval.zanella@linaro.org>
 <CACKs7VAV4aamaYe3b-6XDdxwUrbp8xTrJYCQB4bj+QET7MK0tA@mail.gmail.com>
 <ZTuGVYV0qMGL9PqJ@debian>
 <CACKs7VC=9WbMMZLv7Ou+7hfOaTihXCX_RSjBMLBGa+UBXy_iGQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="eDeUoqkRNQpFuj4M"
Content-Disposition: inline
In-Reply-To: <CACKs7VC=9WbMMZLv7Ou+7hfOaTihXCX_RSjBMLBGa+UBXy_iGQ@mail.gmail.com>
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--eDeUoqkRNQpFuj4M
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 31 Oct 2023 13:35:39 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Stefan Puiu <stefan.puiu@gmail.com>
Cc: Adhemerval Zanella <adhemerval.zanella@linaro.org>,
	linux-man@vger.kernel.org
Subject: Re: [PATCH v4] ld.so.8: Describe glibc Hardware capabilities

On Fri, Oct 27, 2023 at 01:37:42PM +0300, Stefan Puiu wrote:
> Hi again Alex,
>=20
> (hopefully this time without HTML)
>=20
> On Fri, Oct 27, 2023 at 12:43=E2=80=AFPM Alejandro Colomar <alx@kernel.or=
g> wrote:
> >
> > Hi Stefan,
> >
> > On Fri, Oct 27, 2023 at 11:57:51AM +0300, Stefan Puiu wrote:
> > > LGTM, thanks!
> >
> > Should I count that as an acked-by?
> Yes. Didn't know the procedure for saying that with tags.

Heh, in the end I had a short-circuit in my brain and wrote Reviewed-by.  :)

>=20
> Thanks,
> Stefan.
>=20
> >
> > Cheers,
> > Alex
> >
> > >
> > > Stefan.
> > >
> > > > --
> > > > 2.34.1
> > > >
> >
> > --
> > <https://www.alejandro-colomar.es/>

--=20
<https://www.alejandro-colomar.es/>

--eDeUoqkRNQpFuj4M
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVA9JsACgkQnowa+77/
2zKgPg/9Gft8+U2xwKtvVHvdY+TY/UfNt/HpFJI0ZxyJawZy9yMlZ7e+ZiLgqqlL
G+1xQMJKfXlEesxkwhuAkSbO3m61Qj/UtcrAjZbjSDw6NwnTcSHDKfH6w5sGwJeE
ciQC1Q8dz+7jGzr3rWK5vBAdHHnVqWxzGFiQm2KIz6pWvV1Iy840/jChQWDSgvIM
GcipWFXU/HdQLMz2xK2phDHhK0jMzkHX5+itRF+f7WNeIZ0EcsaZTX+zb1TCyv5P
yI2o5CboBnRpL4DnHf1z4Ocwy60GTMtIcvgRNM1GkYnwZV5PH9x7dl9W7dnI+5mS
s0GBOmEkF4SksFkPNGGvuA2ak+2GUhQWP9ZeOrSLb4iC4MimBwnjGrxHql126QyQ
Oe9O+8w7vNfFawv638np+FaqSsewLmso4OvtUA6/hte6H7YLBgCbSsE9+ZpvVi2n
OC4rOj3rM15tFCU04rO48+toxK2qmBCsRnU8sgbwtBn2aAv1ujF5Hdra1FQ2FIhL
UhWud1vV7JTea0GAhSG4BFGpyBUcxTRbwLYrEX6MngNbMQvsIAYg+ssTpIwG864w
WfQt1pFeTeOoZLt2A37hJkh2T2W1BZ2XQ88s+T2IZUDFuirdH1iY7V1DyWTRIAf5
xcM5+WGpcRrdGUdrw6l75cXHEnFpZwDLpNcBpiXmeqR5vR7uEvk=
=pP9N
-----END PGP SIGNATURE-----

--eDeUoqkRNQpFuj4M--
