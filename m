Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2424B6C5F03
	for <lists+linux-man@lfdr.de>; Thu, 23 Mar 2023 06:37:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230416AbjCWFg7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 23 Mar 2023 01:36:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43398 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230429AbjCWFgp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 23 Mar 2023 01:36:45 -0400
Received: from smtp.gentoo.org (woodpecker.gentoo.org [IPv6:2001:470:ea4a:1:5054:ff:fec7:86e4])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB8CF2DE65
        for <linux-man@vger.kernel.org>; Wed, 22 Mar 2023 22:36:09 -0700 (PDT)
References: <20230310015150.3545768-1-Matt.Jolly@footclan.ninja>
 <8899aff7-4193-dd54-4488-234b1a6cee83@gmail.com>
User-agent: mu4e 1.8.14; emacs 29.0.60
From:   Sam James <sam@gentoo.org>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Matt Jolly <Matt.Jolly@footclan.ninja>, linux-man@vger.kernel.org
Subject: Re: Revert "Many Pages: Remove references to C89"
Date:   Thu, 23 Mar 2023 05:32:19 +0000
In-reply-to: <8899aff7-4193-dd54-4488-234b1a6cee83@gmail.com>
Message-ID: <877cv8xc6e.fsf@gentoo.org>
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
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable


Alejandro Colomar <alx.manpages@gmail.com> writes:

> [[PGP Signed Part:Undecided]]
> Hi Matt,
>
> On 3/10/23 02:51, Matt Jolly wrote:
>> Hi All
>>=20
>> I hope this email finds you well. I am writing to raise an issue that ha=
s been causing inconvenience
>> for me (and potentially others). The recent removal of C89 information f=
rom man pages
>> (72b349dd8c209d7375d4d4f76e2315943d654ee9) has put me in a difficult sit=
uation.
>> As I continue to work on code that adheres to the C89 style, such as cUR=
L, I am unable to quickly
>> determine if a particular function can be used or if it was introduced i=
n a later standard like C99.
>> This slows down my workflow and hampers my productivity.
>>=20
>> Therefore, I kindly request that we revert the changes made in the "Many=
 pages: Remove references to C89" patch.
>> Furthermore, I urge everyone to recognize the importance of this informa=
tion and ensure it is not removed from man pages in the future.
>
> The main problem was that the existing info about C89 was not consistent.
> Some pages declared APIs being standard since C89, while others didn't.
> Incorrect info isn't much better than no info.
>
> I'm curious about cURL's real need for C89.  I see that cURL uses GNU
> extensions (-std=3Dgnu89), which actually pulls most of C99[1] (I think
> it pulls the entire C library, and most of the core language).

I don't really agree with it, but the gist is at
https://daniel.haxx.se/blog/2022/11/17/considering-c99-for-curl/.

The general principle here being two things, I guess:
1. It's pretty useful to have this information (even if it's just
on a best-effort basis) because I can cite it in arguments even if
a project is using >=3D C99.

2. People expect the information to be there, so omitting it ends up
giving the impression something just isn't in C89, rather than the
reader realising the information is removed from the man pages entirely.

but also, and this was the case for Matt here:

3. I don't always have a choice. Especially doing distribution work,
I end up patching and contributing to all sorts of projects, and while
I wish many things would use newer C, they're either dead projects, or
their maintainers are of a strong mind on the matter.

>
> Virtually all (even MS, which has always been the last in this)
> systems support C99; why would you consciously avoid it?  Is there
> any system that doesn't yet support it?  Which are the C libraries
> that you need to support that don't provide C99 functions by default
> (or at all)?
>
> I'd like to really understand the need for C89 in 2023.

i.e. what I'm saying is that it's not so much about the need, but rather
that changing the man pages just ends up inconveniencing people who
aren't really happy about using C89 either.

best,
sam

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iOUEARYKAI0WIQQlpruI3Zt2TGtVQcJzhAn1IN+RkAUCZBvlGl8UgAAAAAAuAChp
c3N1ZXItZnByQG5vdGF0aW9ucy5vcGVucGdwLmZpZnRoaG9yc2VtYW4ubmV0MjVB
NkJCODhERDlCNzY0QzZCNTU0MUMyNzM4NDA5RjUyMERGOTE5MA8cc2FtQGdlbnRv
by5vcmcACgkQc4QJ9SDfkZBYugD6AqO2GCCAyTvrU/eLuvudfEQeYGXMk/AzZVu0
y0R5RS0BAI/ZMS9vmGs0aPC40+vpI3aIkX/1IsAMvAOULRzN9Y0E
=Pben
-----END PGP SIGNATURE-----
--=-=-=--
