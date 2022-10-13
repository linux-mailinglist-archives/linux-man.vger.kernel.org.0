Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AA79F5FE3B5
	for <lists+linux-man@lfdr.de>; Thu, 13 Oct 2022 23:06:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229655AbiJMVGP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 13 Oct 2022 17:06:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34756 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229812AbiJMVGO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 13 Oct 2022 17:06:14 -0400
Received: from smtp.gentoo.org (smtp.gentoo.org [IPv6:2001:470:ea4a:1:5054:ff:fec7:86e4])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE103189835
        for <linux-man@vger.kernel.org>; Thu, 13 Oct 2022 14:06:10 -0700 (PDT)
Content-Type: multipart/signed;
        boundary="Apple-Mail=_281C04C2-C7A3-4A6E-9290-9155DDAEA3DC";
        protocol="application/pgp-signature";
        micalg=pgp-sha512
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.1\))
Subject: Re: [PATCH] feature_test_macros.7: document -D_FORTIFY_SOURCE=3
From:   Sam James <sam@gentoo.org>
In-Reply-To: <3ef9f4d7-80c5-9df7-726b-06882228ca13@gmail.com>
Date:   Thu, 13 Oct 2022 22:06:05 +0100
Cc:     linux-man@vger.kernel.org
Message-Id: <DE031F40-868C-4EA4-BA6A-203DDB346844@gentoo.org>
References: <20221013183117.477592-1-sam@gentoo.org>
 <43b87bb6-2c18-5df5-fe5b-6d753f97ad85@gmail.com>
 <F6BBDD88-1C5F-494B-B29E-9B301D17CBF1@gentoo.org>
 <3ef9f4d7-80c5-9df7-726b-06882228ca13@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
X-Mailer: Apple Mail (2.3696.120.41.1.1)
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--Apple-Mail=_281C04C2-C7A3-4A6E-9290-9155DDAEA3DC
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii



> On 13 Oct 2022, at 20:12, Alejandro Colomar <alx.manpages@gmail.com> =
wrote:
>=20
> Hi Sam,

Hi!

>=20
>>> [snip]
>>>=20
>> Maybe "capture" is not the best word. Maybe hooked / intercepted
>> is better?
>=20
> Yeah intercepted might be better.
>=20

Done.

>> F_S=3D3 lets cases where say, malloc size is based on a variable,
>> still get detected because the compiler recognises such cases
>> and adds scaffolding in to hook the functions.
>=20
> Adding something like this to the page might be helpful.

I've put it in -- please let me know if it's helpful as-is or not.

>=20
>> (The malloc example at
>> =
https://developers.redhat.com/articles/2022/09/17/gccs-new-fortification-l=
evel#1__a_new_builtin_provides_enhanced_buffer_size_detection
>> is what I'm referring to).
>> To be clear though: the semantics are similar to FORTIFY_SOURCE=3D2,
>> it's just that FORITFY_SOURCE=3D3 uses an extra bit of information
>> (__builtin_dynamic_object_size) to hook more cases.
>=20
> Maybe this is interesting (although maybe a bit too much into =
implementation details.

I'll leave this part out for now, but keep the reference in the commit =
message.

>=20
> I'd like to know, from the point of view of a user who knows little =
about the different fortify levels (that actually matches me quite well =
:), what would be the constant differences (i.e., ones that the compiler =
will respect in the future (if there are any).  What kind of guarantees =
there are or not.
>=20

What do you think about the latest state (I'll send v2 now)?

It's hard because it's reliant on what the compiler can deduce,
but the general idea is that it can go a step beyond and try to come
up with an upper bound based on a variable, even if it can't
get the exact size right, so it at least knows if you overshoot by a lot
now.

>> So whatever word works for FORTIFY_SOURCE < 3 works for 3 too.
>> I'm definitely feeling like "capture" is not the best word but I'm
>> struggling for the right one.
>=20
> If you're not inspired now, I'm fine adding whatever you want to add =
now; and we can revise it in the future.  That's fine.
>=20
>> --
>> Additional question: there's actually some confusing
>> constraints about when we can use F_S=3D3.
>> It needs GCC 12 or Clang 9 as a compiler,
>> and >=3D glibc-2.34.
>> musl does not, at this time, support any
>> built-in fortification. I don't know if we should
>> mention that part.
>=20
> For sure.  I was considering mailing musl maintainers to suggest that =
we could officially/consistently document musl, as it's become an =
important libc alternative in Linux distros.
>=20

I think this is a good idea. They might say the POSIX man pages should =
serve as documentation
enough, but I think specifically documenting it will be useful -- not =
just for this fortification bit,
but another example is actually time64 -- musl made a hard break in =
1.2.x, hence no need
for macros.

I feel like that sort of information is useful for people so you have my =
full support in that
and I'm happy to help.

Best,
sam

--Apple-Mail=_281C04C2-C7A3-4A6E-9290-9155DDAEA3DC
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iNUEARYKAH0WIQQlpruI3Zt2TGtVQcJzhAn1IN+RkAUCY0h9vV8UgAAAAAAuAChp
c3N1ZXItZnByQG5vdGF0aW9ucy5vcGVucGdwLmZpZnRoaG9yc2VtYW4ubmV0MjVB
NkJCODhERDlCNzY0QzZCNTU0MUMyNzM4NDA5RjUyMERGOTE5MAAKCRBzhAn1IN+R
kOqkAP9Y0dvEU6nn5jAH+fvtFcM4C/uYR5L/k3Z1qkAmavMtaQD+PZlNsfEokmE/
Q3ozld9n5nU+9koRqsZyuXkQk4DylAU=
=v+Nr
-----END PGP SIGNATURE-----

--Apple-Mail=_281C04C2-C7A3-4A6E-9290-9155DDAEA3DC--
