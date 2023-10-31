Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DC8C97DD145
	for <lists+linux-man@lfdr.de>; Tue, 31 Oct 2023 17:11:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344890AbjJaQLx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 31 Oct 2023 12:11:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37222 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344932AbjJaQLw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 31 Oct 2023 12:11:52 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 50891DA
        for <linux-man@vger.kernel.org>; Tue, 31 Oct 2023 09:11:50 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E5807C433C7;
        Tue, 31 Oct 2023 16:11:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698768709;
        bh=J+bENId0jYdk6FNf4LFfGF6eHAv2WOaOBerx2GRr0+w=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=mFTrSqG2W254eUoflDm+lm/QLyxngBr0gbhw43wsOsDVRDQ34qmDZliwLNRx1n1mr
         64nPDxrngUP0HXeqHxijDO4W13jPA8/sRG38GzHBN7BjTAygWxlCDTeqVfd//MLbGR
         aY+4EsiPejz5QOc74jEg+mhq9n0Oc6YBNj6fvL/WFT/nqWrobToViHX8h4NXpe2xAS
         ZCbZrMu9RE2ixy6GAUwL955RTnbPS/tzIfdb/lCia7SQ/jSVYqokILmV4qQvp+X2hH
         ZMBTwOsGFfo5CkurtNuLCZRfd1mkeMzW3lvZ4lVo+kBaCn618VXltsP87pXTBnrmzb
         XtvNj3CvDUqbg==
Date:   Tue, 31 Oct 2023 17:11:46 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Stefan Puiu <stefan.puiu@gmail.com>
Cc:     Bruno Haible <bruno@clisp.org>, linux-man@vger.kernel.org,
        GNU C Library <libc-alpha@sourceware.org>
Subject: Re: [PATCH] prctl.2: Fix typo
Message-ID: <ZUEnQmDDLwwfCd_g@debian>
References: <4678853.9Mp67QZiUf@nimes>
 <ZUD12kxqzd0PsT_E@debian>
 <CACKs7VCi-MZfrhPLGqPDz71ciTBkKGriMwJQAy16WoP--P6=QQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="nIWDSleWSwhkafiq"
Content-Disposition: inline
In-Reply-To: <CACKs7VCi-MZfrhPLGqPDz71ciTBkKGriMwJQAy16WoP--P6=QQ@mail.gmail.com>
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--nIWDSleWSwhkafiq
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 31 Oct 2023 17:11:46 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Stefan Puiu <stefan.puiu@gmail.com>
Cc: Bruno Haible <bruno@clisp.org>, linux-man@vger.kernel.org,
	GNU C Library <libc-alpha@sourceware.org>
Subject: Re: [PATCH] prctl.2: Fix typo

Hi Stefan,

On Tue, Oct 31, 2023 at 04:31:58PM +0200, Stefan Puiu wrote:
> Hi Alex and Bruno,
>=20
> On Tue, Oct 31, 2023 at 4:06=E2=80=AFPM Alejandro Colomar <alx@kernel.org=
> wrote:
> >
> > Hi Bruno,
> >
> > On Sun, Oct 29, 2023 at 09:51:55PM +0100, Bruno Haible wrote:
> > > The synopsis of the prctl.2 page has:
> > >
> > >        int prctl(int option, ...
> > >
> > > This makes no sense, because
> > >   - the first argument is not optional; it is mandatory.
> > >   - the title of the page is "operations on a process or thread".
> > >
> > > It is thus clear that the first argument indicates the operation to p=
erform.
> > >
> > > Find attached the correction.
> >
> > Agree.  I've seen there are other similarly incorrect uses of the word
> > "option" where "operation" should have been used in the same page (but
> > there are some that are correctly used).  Would you mind checking the
> > entire page for those other replacements?
>=20
> Hmm, 'option' is not the same as 'optional'. I guess the first

Yes, I don't think it means optional, but rather a choice from all the
available operations.  However, "operation" would be a more precise
name.

> parameter can be seen as an 'option' passed to prctl() along with some
> other parameters, right?
>=20
> Also, there are multiple occurrences of 'option' in the page (e.g.
> 'This option is mainly intended...'), so only changing the argument
> name would introduce an inconsistency in the page. The argument is

Yes, I think we should also update those when they refer to the first
argument, that is, the operation that prctl(2) will perform.

> also called '__option' in glibc headers on my system (in
> /usr/include/x86_64-linux-gnu/sys/prctl.h):
>=20
> /* Control process execution.  */
> #ifndef __USE_TIME_BITS64
> extern int prctl (int __option, ...) __THROW;
> #else
> # ifdef __REDIRECT
> extern int __REDIRECT_NTH (prctl, (int __option, ...), __prctl_time64);

I've CCed glibc in case they want to rename it too.

>=20
> So, I would say I'm not sure this improves things.

I think a consistent use of operation instead of option would improve
things.  We just need to make sure it's consistent.

Cheers,
Alex

>=20
> Just my 2 cents,
> Stefan.

--=20
<https://www.alejandro-colomar.es/>

--nIWDSleWSwhkafiq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVBJ0IACgkQnowa+77/
2zKZdBAAoGe70MM65sc8ybDXvthN/BsODQSZKV9SUK9Wc95fCRWbKUllYc+W2ide
lYZQ6F/IRXr7JmkeZ/alkd4YcLpuTJWP9tApbTFTatO7ewPkHrHEw1umW/VGQmV/
M+y747BR1fDIADZHciE2PyezXgheThA5FefP7EGMLfzG48BJurbSgnqZxkBvXzyL
4ZfwuqwNlPZwDpIJnymEitaJQ1FsY23UHvyn1DZi5vnQGPYUw+hY+LRKsvu6oXPK
gi76PQyutMMTU86c39C2pVZQ+6tq0FwMbEa02liLN5B7SaIstPpwO4SvXFZwhP3F
NOBXK3l2jQQxGbXrw7SQS1BE/VzVztP8tdfdc4b0Q++F541/zbBDfhZWEA7hhMCT
vieuuTHvwWW7bgfjnufRWa5y6AIXy+BParlxffuLjz4F3kYpV2VceAYLtQbM5RT5
l/fNeYBKYMmXFq5mN0TxwERYiZzFlIuTukLCXXxq30frAIyxeZ34MruS34sJqiV6
2MynFw0VQGu6MV/gCXVghEVbXDNHUmBT9QbDEUG+EbrGrxFyzep8x/bUWcTOHqo0
ewinzPPX3b0VWJK8ugvZL8cIqRPzvztMd7QA54DUYlIZGeYQIrGtS4903HSlDt/j
HT2GaiKmvG0hQvgqZLCiujP4RI5paUlDgRK6mP+ozfI+0199f1U=
=oA3Z
-----END PGP SIGNATURE-----

--nIWDSleWSwhkafiq--
