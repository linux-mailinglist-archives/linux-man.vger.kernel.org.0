Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7CBB66BF7DB
	for <lists+linux-man@lfdr.de>; Sat, 18 Mar 2023 05:59:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229478AbjCRE7F (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 18 Mar 2023 00:59:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42456 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229681AbjCRE7D (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 18 Mar 2023 00:59:03 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3A80166C4
        for <linux-man@vger.kernel.org>; Fri, 17 Mar 2023 21:58:53 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id fd5so27745849edb.7
        for <linux-man@vger.kernel.org>; Fri, 17 Mar 2023 21:58:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679115532;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ct8qQU7a+932jPNB3yPX/jCSP+tOMyP/tZihIk7stm4=;
        b=b7as05SMut5XaM/+yS9fIMBMdrBkNuizwR5HIe60mfI8ceT+mdpYxt3Q/9p/TkaITo
         zcymSSwICLyosMV4FLQrw2o6FFVBKVYWb3BON0oB2n3tjlzVotuz4soFVzF1YixRPbov
         1HCiQf8f7oGqvrzU72wmAxy3eSLFlUEKpXXTW5DyHT6DT/L52kYiD1O+VjdXdD37/Zd3
         8o08dmzUL+NGAJKzHufNtmR9Yt4TY/4aviMEhdI34Tj1tEmbzXe44c+qO8a1Sq7+YIZb
         9deUrgeDCQdEUgM2ml8cshfSg2WZkQi0rMla0sScCjo8zbyEo4Zl1NJJK4TJprU92HO5
         WLKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679115532;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ct8qQU7a+932jPNB3yPX/jCSP+tOMyP/tZihIk7stm4=;
        b=nkY/is+q/O+/3sZ4u793vSf8EyGWaal2h/9aGHMA+XWWxCpww8LsVojs69vYy0tb1f
         Pcz1ePCdLdafphcSJgpl/bsltiLR2WY1/XZYAPkvlM77foIOnuzx+8eaUij76zkoNI+d
         5NNOd2Bn3JNSsDWDAJIC6yNxQSZesPgo1yXFheBtK0Tbfsoegw1bqAQbiD7bxC6N/fLi
         +dFm7gn6QykBiL3lCbKNzRmykl0Ue4MdNivQHtO5rGDeIn/V+QkdVGJ5m7q7AFdJXDLk
         ETfnN+3g2gqO+x55iIv4hNvGEJz8Odo6NKoiCGh2eggN3KP0rKPyDi93Hh/8EiTBPr33
         Gvuw==
X-Gm-Message-State: AO0yUKXZUTNWrwroQv7+7qq4OcP2jfmdgQF3FgZXmNPZKOmil6+sHSuU
        r8yY0ZEr2ze0zq4KKoT5DR8=
X-Google-Smtp-Source: AK7set8xWnWKBMvEUQZtOJplMWqSHxzxjAi8D0kvx1rCxmjFc2wu7msig6pIQlEeH9yaDgp7T4LcLA==
X-Received: by 2002:a17:906:6d08:b0:92f:b18a:b518 with SMTP id m8-20020a1709066d0800b0092fb18ab518mr1494449ejr.66.1679115532194;
        Fri, 17 Mar 2023 21:58:52 -0700 (PDT)
Received: from dj3ntoo (212.sub-72-109-208.myvzw.com. [72.109.208.212])
        by smtp.gmail.com with ESMTPSA id g18-20020a170906395200b008c979c74732sm1688849eje.156.2023.03.17.21.58.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Mar 2023 21:58:51 -0700 (PDT)
Date:   Fri, 17 Mar 2023 23:58:45 -0500
From:   Oskari Pirhonen <xxc3ncoredxx@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Tom Schwindl <schwindl@posteo.de>, linux-man@vger.kernel.org
Subject: Re: Revert "Many Pages: Remove references to C89"
Message-ID: <ZBVE1QUaoCZZ73Os@dj3ntoo>
Mail-Followup-To: Alejandro Colomar <alx.manpages@gmail.com>,
        Tom Schwindl <schwindl@posteo.de>, linux-man@vger.kernel.org
References: <ZAq5gg+aQB5TrDQ3@dj3ntoo>
 <f5aac742-4417-fced-343d-002117d629f1@gmail.com>
 <ZA5/n8Ix+eCYnNgM@dj3ntoo>
 <591290fb-e78d-ad3a-8b25-4a860d26f775@gmail.com>
 <ZBAIkHrBm50vjSqL@dj3ntoo>
 <d3aee611-844b-fba3-5642-16b0ddc576a3@gmail.com>
 <6aad40b5-04ca-68d8-7da2-cb4a7bed7ded@Shaw.ca>
 <a1a5ea63-9fbe-17f6-fe69-1850552a5422@gmail.com>
 <CR75QLUXYL2F.9ZFRDB68HXGW@morphine>
 <bef1b957-b1ea-2562-57a9-ad9ef6d8b951@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="1mO4t9h6uEupiJuN"
Content-Disposition: inline
In-Reply-To: <bef1b957-b1ea-2562-57a9-ad9ef6d8b951@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--1mO4t9h6uEupiJuN
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Mar 16, 2023 at 02:43:54 +0100, Alejandro Colomar wrote:
> Hi Tom,
>=20
> On 3/15/23 19:10, Tom Schwindl wrote:
> > Hi Alex,
> >>
> >> Do you know if we can distribute them?  which license applied to them?
> >> I'm worried that some distros are very strict in what can be distribut=
ed
> >> in a package (e.g., Fedora, Debian (main)).  There were issues with
> >> man-pages-posix in the past.
> >>
> >> Should we maybe open a separate project iso-c-drafts that installs
> >> drafts of the ISO C standards and maybe some scripts that will be usef=
ul
> >> with them?
> >>
> >=20
> > This is probably a legal gray area and I'd be careful.
>=20
> Yeah, that's what I think.  Until I'm 100% sure that it's legal, I
> won't do it.
>=20
> > ISOs license agreement[0] explicitly states the following:
>=20
> I had some doubts, because since the drafts have always been published
> in many sites, I don't know if that's legal, or simply ISO doesn't
> enforce the license over drafts...  If someone knows for sure and can
> clarify, that would help.  In fact, maybe I can write to someone in the
> committee...
>=20
> Thanks,
>=20
> Alex
>=20
> >=20
> >   > The ISO publication(s) you order is/are copyrighted by the Internat=
ional
> >   > Organization for Standardization. You acknowledge and agree to resp=
ect ISO=E2=80=99s
> >   > copyright in our publications by purchasing, downloading, copying or
> >   > otherwise using (an) ISO publication(s). Except as provided for und=
er this
> >   > Licence Agreement, you may not lend, lease, reproduce, distribute or
> >   > otherwise commercially exploit ISO publication(s). In the case of j=
oint
> >   > standards (such as ISO/IEC standards), this clause shall apply to t=
he
> >   > respective joint copyright ownership.
> >=20
> > As we (or a third party) can only produce a plaintext version by downlo=
ading the
> > original PDF draft and converting it, we agree with the above. Thus, we=
 can't
> > "reproduce" or "distribute" the standard, at least that's my understand=
ing[1].
> > I highly doubt that major distibutions would take that risk, nor should=
 we.
> >=20
> >=20
> > [0] <https://www.iso.org/terms-conditions-licence-agreement.html#Custom=
er-Licence>
> > [1] For the record: I'm not a lawyer, this is not legal advice. It's ve=
ry well
> >     possible that I've overlooked something.
> >=20

Gentoo has a concept of "fetch restricted packages" [1] where ebuilds
are available through Portage, but you have to provide the distfiles
yourself. Perhaps something similar in spririt can be used here if the
license terms forbid/are unclear about distributing the standards (or
drafts) themselves?

Here's my idea:

- Create the utils with the assumption that the docs exist at some TBD
  path and ship them (the utils, that is).
- Include a check for the docs and instruct the user to install them to
  that path manually if they don't exist.
- If it turns out the docs can be distributed, the check can be removed.
  Although it might be better to keep it around for the sake of the
  pickier distros in hopes that they don't patch out the utils from
  their packages.

Obligatory I'm not a lawyer either.

For people unfamiliar with Gentoo terminology, "ebuilds" are basically
scripts used to fetch, build, and install packages and "distfiles" are
what's being fetched (source code, etc).

- Oskari

[1]: https://devmanual.gentoo.org/general-concepts/licenses/index.html#lice=
nse-implied-restrictions

--1mO4t9h6uEupiJuN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQQfOU+JeXjo4uxN6vCp8he9GGIfEQUCZBVFAAAKCRCp8he9GGIf
ESG+AP0edRzwxMsl0iqBeY+lsx3brJomy/kfXFuCfgxfIWVH5QEA8NkA9KA17T6H
IaR4tEb9nKfqCCcFvIJ2gJIML5VOCwg=
=b/iO
-----END PGP SIGNATURE-----

--1mO4t9h6uEupiJuN--
