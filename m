Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 437E77AE2C5
	for <lists+linux-man@lfdr.de>; Tue, 26 Sep 2023 02:05:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229737AbjIZAF2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 25 Sep 2023 20:05:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41916 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229460AbjIZAF1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 25 Sep 2023 20:05:27 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 40BB4116
        for <linux-man@vger.kernel.org>; Mon, 25 Sep 2023 17:05:20 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 73C93C433C7;
        Tue, 26 Sep 2023 00:05:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1695686719;
        bh=tP79TnLZnGuc9lTgbpdXJADlXhrmf8utvSoRprVMcBM=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=F7yRBeyYjXB/hvaGGEFCvuyyjfnXKwU4TAKXNUpDj1pVu1j6uKbU1R7YJ44NH8Drt
         qxoY7PqlJEP8P6LN2ibD/XdqDry97MqeATGO3JH5PnySG3Sl/uqGJC/EBewIr4UloT
         UPQrs1pLnPlLIHlvvCTd+a0cISwdPuFxI4+OnGHQIX/ibExXchpIJUOxTNwnTA2hQ4
         rlV+1Ww/aHZKesvvZDahqFIOs6UevE9goJy7wVYPhDPSNMZ0m3G7iRXp+9itHQZMpl
         ZJCyjQ+u/tdDUMcMYw5MkDawwSlHvElrhxzLGl2oHP4nveB4NhNUOG2PkZ3m313l8a
         1avZql5s3zHTw==
Date:   Tue, 26 Sep 2023 02:05:16 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     enh <enh@google.com>
Cc:     Jakub Wilk <jwilk@jwilk.net>, linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Rob Landley <rob@landley.net>
Subject: Re: [PATCH] fseek.3: incorporate fseeko()/ftello().
Message-ID: <lpxo26pxl32te6ljhxixhde74ta7jjv5ytw53grhevejdjnyn3@j5zizuxq3l5j>
References: <CAJgzZoqxNGmDMbp8Dh0n5TQwDu-8POf8=9fyaaRUwLVRw2skZg@mail.gmail.com>
 <20230223213758.pixv4m6uf4gzhxxo@jwilk.net>
 <CAJgzZordjqNX4LHq9K9uatcWOoXO0whbHhuOeKgawtzvQ_OE+A@mail.gmail.com>
 <CAJgzZoqTNiEadyD5uAY17FAwPeMwGzqKVqPaaLy-pTz0tzu=qQ@mail.gmail.com>
 <CAJgzZood-DOXNw46anDp1wSGO8GzdgJM0gAq2dgG2cAyvXQGEA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="rgent7pmyvpkcfts"
Content-Disposition: inline
In-Reply-To: <CAJgzZood-DOXNw46anDp1wSGO8GzdgJM0gAq2dgG2cAyvXQGEA@mail.gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--rgent7pmyvpkcfts
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] fseek.3: incorporate fseeko()/ftello().
MIME-Version: 1.0

Hi Elliott,

On Tue, Sep 19, 2023 at 01:49:33PM -0700, enh wrote:
> On Fri, Feb 24, 2023 at 10:06=E2=80=AFAM enh <enh@google.com> wrote:
> >
> > (sending again as plain text.)
> >
> >
> > On Fri, Feb 24, 2023 at 10:02 AM enh <enh@google.com> wrote:
> > >
> > >
> > >
> > > On Thu, Feb 23, 2023 at 1:38 PM Jakub Wilk <jwilk@jwilk.net> wrote:
> > >>
> > >> * enh <enh@google.com>, 2023-02-22 12:42:
> > >> > The
> > >> >+.BR fseeko ()
> > >> >+end
> > >>
> > >> s/end/and/
> > >
> > >
> > > ack. will fix.
> > >
> > >>
> > >> >+.BR ftello ()
> > >> >+functions are similar, except that the
> > >>
> > >> "similar, except..." sounds awkward to me. (And it's not the wording
> > >> fseeko.3 used.)
> > >
> > >
> > > sounds right to me, and seems widely used in existing pages though? s=
trncmp(), for example. ("same, except" is also used in existing pages, but =
seems less common.)
> > >
> > > but at a higher level (the "not the wording fseeko.3" used) i vacilla=
ted there between "just copy" and "try to improve" because i have two probl=
ems i'm trying to solve:
> > >
> > > 1. someone (rob) who knows the c library about as well as anyone i kn=
ow who _isn't_ a c library maintainer themselves wasn't aware of fseeko()/f=
tello(), and the existing fseek() page misled them into thinking that fsetp=
os()/fgetpos() was their only option.
> > >
> > > 2. in 2023 where most people assume sizeof(long)*8 =3D=3D 64, a lot o=
f people don't understand why fseek()/ftell() isn't "good enough". my initi=
al version of the patch talked more about ILP32 systems and LLP64 systems (=
aka "Windows") where "long" isn't equivalent to "int64_t". (but the need to=
 talk about _FILE_OFFSET_BITS too made the whole section a bit unwieldy.)
> > >
> > > any version of this patch fixes #1.
> > >
> > > fixing #2 well is the trickier part, and i'm curious if there are any=
 other opinions there before i send out a new version of the patch?
> > >
> > >>
> > >> --
> > >> Jakub Wilk

This patch didn't apply.  The reason are some formatting fixes recently
applied to that page (and many others) a couple of months ago.  Please
rebase to master.

Cheers,
Alex

--rgent7pmyvpkcfts
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUSIDsACgkQnowa+77/
2zJZwQ/+Mi/8ek7u2IBmjzaeESnu7cf2CCIeZ5vs3doj7URG0Q4LsLNoKQwN10bl
I2uUkYC9/8Bbtc+JedvOcdk8FGgTMwfeyfNul66ff2PMwgJmNAdc6rFbHBnVkSLw
GN3ENrsnIjPaQlXgN1ip7zHhWQI+t28KJFKnBPBRsbWROGI01lqB36V7yxk3ig1R
TGf1+Ua4DENeTrJvTbMGllFKERLur3sMxvPo4OhFJ8jfAUNxkFDwngJsBF1brF7R
QfK/x4tguZBsGATgkrDUKT9s9OWM9snRxJPBkiEyYKQUft5VHBAUgvDxOZr1G4dB
Js8DJbD2l8vZwQCYDKh1GY25FSh6aXuYTasklY3gX5cx3MyQNOwYfXWBJUcMbH24
G8t8vkF1LRFqNJmKlqs0w7fHAJWSrumR9rREPGGdA3pjrrv6GG3dumhlycpblnqM
du1XjiMYANzTiYrKVw00/rkH02Nimeg04/WpDCpRvn3Dyc+ccHdWb0o8D7mboH0b
MFql7+RddMhdKT0yXDzUyAGQw/ejjsQKIx6h6VqcpTcqdn8aBKU0QhkBnpd3EfiG
Ny/n/w8FwUPRz0n9PbglXi9VKT/IhXUlMTCGYpYWwsDDJHdntKsezbT5ouwrUvxS
ReKLrGEqpqJUJqzHuJijc2+Ty3fYoQC99yzaxdjoqyDCgte9HWw=
=jp4e
-----END PGP SIGNATURE-----

--rgent7pmyvpkcfts--
