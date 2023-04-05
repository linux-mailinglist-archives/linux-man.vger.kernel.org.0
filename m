Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 55C396D7232
	for <lists+linux-man@lfdr.de>; Wed,  5 Apr 2023 03:54:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232695AbjDEByI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 4 Apr 2023 21:54:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60338 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236228AbjDEByH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 4 Apr 2023 21:54:07 -0400
Received: from smtp.gentoo.org (smtp.gentoo.org [IPv6:2001:470:ea4a:1:5054:ff:fec7:86e4])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 07B543A8C
        for <linux-man@vger.kernel.org>; Tue,  4 Apr 2023 18:54:05 -0700 (PDT)
References: <CAD66C+aECcWHSogwDygQnHOvDCayHbH2emKrsUhVxkg48KzXfA@mail.gmail.com>
 <6c5593f5-efc0-564d-83fa-430328b31231@gmail.com>
 <CAD66C+Y_b_9j1Oty=kbt2jZywzdVOen4i31ndhqyTTCRp=-xTg@mail.gmail.com>
 <5858fd32-aced-7f87-a1c2-2b92c002e4d3@gmail.com>
 <CAD66C+bWn5Vm3gKa=ygvqyAkELpdCz82huqMk6FJG2Z87B0=Fw@mail.gmail.com>
 <0219f97b-f28e-18f0-3451-87ee00f851aa@gmail.com>
 <CAD66C+anMmcxDAf+KDDzEP7B5HHyzZKiSfZM9Q5fhN3HxqaHbw@mail.gmail.com>
 <6409b7ad-8b17-c2c4-9671-7c251cb93471@gmail.com>
User-agent: mu4e 1.10.1; emacs 29.0.60
From:   Sam James <sam@gentoo.org>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Mingye Wang <arthur200126@gmail.com>, linux-man@vger.kernel.org
Subject: Re: [PATCHv2] feature_test_macros.7: document clang fortify support
Date:   Wed, 05 Apr 2023 02:53:33 +0100
In-reply-to: <6409b7ad-8b17-c2c4-9671-7c251cb93471@gmail.com>
Message-ID: <87edozqekm.fsf@gentoo.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
        micalg=pgp-sha512; protocol="application/pgp-signature"
X-Spam-Status: No, score=-2.3 required=5.0 tests=RCVD_IN_DNSWL_MED,
        SPF_HELO_PASS,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--=-=-=
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


Alejandro Colomar <alx.manpages@gmail.com> writes:

> [[PGP Signed Part:Undecided]]
> Hi Mingye,
>
> On 4/3/23 18:24, Mingye Wang wrote:
>> Hi Alex,
>>=20
>> On Sat, Apr 1, 2023 at 5:56=E2=80=AFAM Alejandro Colomar wrote:
>>> If it's just a reference to the software, that is fine.  If it's a
>>> reference to the version, then I want it to be greppable.
>>>
>>=20
>> Is my patch attached to the last message all good, or is there
>> anything more to do?
>
> Sorry about the delay; I'm a bit overloaded.  Did you check Sam's
> objection?

I'm happy now after a clarification was made (libssp does more than I thoug=
ht
it did).

>
> On 3/23/23 06:38, Sam James wrote:
>> The patch looks OK to me in terms of the content, apart from the libssp
>> mention. libssp and stack smashing protection overall is distinct from
>> fortification.
>>=20
>> SSP is where stack canaries are emitted and their value is checked
>> later on to see if they're intact. Fortification is where certain
>> functions are replaced with variants that check the size of their
>> arguments e.g. dst & src and ensure they're big enough. They're distinct.
>
> Thanks,
> Alex
>
>>=20
>> Thanks,
>> Mingye


--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iOUEARYKAI0WIQQlpruI3Zt2TGtVQcJzhAn1IN+RkAUCZCzUul8UgAAAAAAuAChp
c3N1ZXItZnByQG5vdGF0aW9ucy5vcGVucGdwLmZpZnRoaG9yc2VtYW4ubmV0MjVB
NkJCODhERDlCNzY0QzZCNTU0MUMyNzM4NDA5RjUyMERGOTE5MA8cc2FtQGdlbnRv
by5vcmcACgkQc4QJ9SDfkZCoVgEAlH0FEegkNLnPEU01ZMKLUKzTikK2KKqVb04K
UP/SJRgA/imZYsf/U0DbpCCGQDvS6GahrfnLFiSltbwavYt4xUQP
=fTdz
-----END PGP SIGNATURE-----
--=-=-=--
