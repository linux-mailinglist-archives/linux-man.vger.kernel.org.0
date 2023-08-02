Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F406E76D9B2
	for <lists+linux-man@lfdr.de>; Wed,  2 Aug 2023 23:39:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230428AbjHBVjK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 2 Aug 2023 17:39:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40990 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230007AbjHBVjJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 2 Aug 2023 17:39:09 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7BAD910C7
        for <linux-man@vger.kernel.org>; Wed,  2 Aug 2023 14:39:08 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 0254A61AF0
        for <linux-man@vger.kernel.org>; Wed,  2 Aug 2023 21:39:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 340B4C433C7;
        Wed,  2 Aug 2023 21:39:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691012347;
        bh=5vuzKSFy1xf0IHCd0Jh6cTxmYRINyipJZQvKW2kJlLo=;
        h=Date:Subject:From:To:Cc:References:In-Reply-To:From;
        b=ncA1FkWUDU6ZRLmVJXuec/RQtsfwyNTsPW48adiPxSyzCr08b31YVv/K10VjF4yNj
         13cOTGfK1fdFd5RMr1VJh9qKnfBKcvr2KBh1+NTA9AAzQ3oClJA5NTwbmOW1znexud
         413H0bUQu/Wolm5wX67DOFNZna4yE6NqAGfsXRUVU3RaBc4vYZYyX5F5wJwcRlAC5O
         VnGhVIToEsS1vMgKC52UkM88nrV2jZ94tKgJVWXK9wDsydSljVV1BklhAa5w7wANVC
         AdF2U/sGwKnxSjUASQJab1W+sCb6mXa4aYIN/gECTprK6Ar5uVCHikzY/s5hoYPDmt
         ZRZptwkcAnqhg==
Message-ID: <18ebd939-3a57-756a-e70b-785be43690f3@kernel.org>
Date:   Wed, 2 Aug 2023 23:38:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: Revert 70ac1c478 ("src.mk, All pages: Move man* to man/")
Content-Language: en-US
From:   Alejandro Colomar <alx@kernel.org>
To:     linux-man@vger.kernel.org, Petr Vorel <pvorel@suse.cz>,
        Stefan Puiu <stefan.puiu@gmail.com>,
        Jakub Wilk <jwilk@jwilk.net>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        Marcos Fouces <marcos@debian.org>
References: <YxcV4h+Xn7cd6+q2@pevik>
 <20220907205304.nlqce37l26gezjqi@jwilk.net>
 <7b9c2ab4-6cdc-b4fd-1001-8721083695fa@gmail.com>
 <CACKs7VADwh0Qs8Zo7=biVzpOhSgMt5xD1BSBXdg82sPAcdjYOg@mail.gmail.com>
 <Yxr9WN7f3FEqKVRg@pevik> <a8f7856e-d442-29de-e95b-99a0e932646e@gmail.com>
Organization: Linux
In-Reply-To: <a8f7856e-d442-29de-e95b-99a0e932646e@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------8Gwaelvce4c8wLU3Fas5KTzu"
X-Spam-Status: No, score=-7.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------8Gwaelvce4c8wLU3Fas5KTzu
Content-Type: multipart/mixed; boundary="------------QbKNlqgTRoj1dooly0WPvSBB";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, Petr Vorel <pvorel@suse.cz>,
 Stefan Puiu <stefan.puiu@gmail.com>, Jakub Wilk <jwilk@jwilk.net>
Cc: Michael Kerrisk <mtk.manpages@gmail.com>,
 Marcos Fouces <marcos@debian.org>
Message-ID: <18ebd939-3a57-756a-e70b-785be43690f3@kernel.org>
Subject: Re: Revert 70ac1c478 ("src.mk, All pages: Move man* to man/")
References: <YxcV4h+Xn7cd6+q2@pevik>
 <20220907205304.nlqce37l26gezjqi@jwilk.net>
 <7b9c2ab4-6cdc-b4fd-1001-8721083695fa@gmail.com>
 <CACKs7VADwh0Qs8Zo7=biVzpOhSgMt5xD1BSBXdg82sPAcdjYOg@mail.gmail.com>
 <Yxr9WN7f3FEqKVRg@pevik> <a8f7856e-d442-29de-e95b-99a0e932646e@gmail.com>
In-Reply-To: <a8f7856e-d442-29de-e95b-99a0e932646e@gmail.com>

--------------QbKNlqgTRoj1dooly0WPvSBB
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi all,

On 2022-09-15 15:40, Alex Colomar wrote:
> Hi all,
>=20
> On 9/9/22 10:46, Petr Vorel wrote:
>>> On Thu, Sep 8, 2022 at 1:28 AM Alejandro Colomar <alx.manpages@gmail.=
com> wrote:
>>>> On 9/7/22 22:53, Jakub Wilk wrote:
>>>>> * Petr Vorel <pvorel@suse.cz>, 2022-09-06 11:41:
>>>>>> Although I agree that number of man* is quite high and single man
>>>>>> directory looks nicer, from practical reasons I'd prefer to revert=

>>>>>> this commit.
>>
>>>>> I don't like the new layout either.
>>
>>>> Thank you both for sharing your opinion.  I'll revert it, then.  Let=
 me
>>>> a few weeks before doing that, since I'm in the middle of some other=
 big
>>>> changes (about lint-c), so to not have to stash and fix conflicts at=

>>>> that scale.  If in the meantime someone finds the new layout nice,
>>>> please speak up :)
>>
>>> I think one other aspect to consider is that it makes history
>>> searching harder. If you type 'git log <file>', by default you only
>>> get the history to the last move. You need 'git log --follow' to see
>>> the whole history. Then if you want to do a 'git blame' on an old
>>> version of the file, pre-move, I think you need to find the old path
>>> and use that. If the maintainer's opinion of where a file should be
>>> changes often, that makes it more fun :).
>>
>> Yes, I have experience from other projects that moving around does not=
 help.
>> But here simple revert is working well:
>> $ git revert 70ac1c4785fc1e158ab2349a962dba2526bf4fbc
>> git is smart: new changes in unshare.2 (8f4ed6463) and fanotify_mark.2=

>> (c06943bee) didn't cause a conflict. But still, if you decide on rever=
t, I'd do
>> it early (don't put new commits before it)
>>
>> $ git log man2/_exit.2 # shows previous history
>>
>=20
> Reverted (before any other patches).

I'm packaging 6.05 for Debian, and I found issues.  The problem is
present due a combination of the patch below and not having a man/
dir.

Since we support any kind of dirs within $(MANDIR), and not just
man*, `make check` happily checks any file whose name resembles a
manual page.  This is useful for linting random projects that put
their pages together with their sources, in an unorganized
directory structure.  Most projects do this.

In the Debian manpages packaging, this finds patches in .pc/, which
are placed there by quilt(1).

I see several different solutions to make gbp-buildpackage(1) work:

-  My preferred one would be to move (again) the pages to a man/
   dir in the root of the project and define `MANDIR:=3D$(srcdir)/man`.
   Then, `make check` would just ignore .pc/ in the root of the repo.

-  Revert the patch below.  I don't like it, since then we wouldn't
   be able to use our build system to lint other project's manual
   pages, which is an interesting feature.

-  Revert the patch in the Debian packaging.  However, other
   distributors may have similar problems.

-  Completely disable `make check` (via override_dh_auto_test) in
   Debian packaging.  I don't like this.  I think distros running
   `make check` is useful to detect regressions.

What do you think?

Thanks,
Alex

---

commit 11e3443c0c6812460402382857e6af9c83938e47
Author: Alejandro Colomar <alx@kernel.org>
Date:   Sat Apr 29 19:29:50 2023 +0200

    *.mk: Allow non-standard source MANDIRS
   =20
    Some projects don't store their source manual pages in a directory
    structure resembling $MANPATH.  Allow such a directory structure so t=
hat
    we can for example lint groff's source manual pages:
   =20
    $ make check lint MANDIR=3D~/src/gnu/groff;
   =20
    Signed-off-by: Alejandro Colomar <alx@kernel.org>

diff --git a/share/mk/build/_.mk b/share/mk/build/_.mk
index 6cc820073..2f8ae0bcb 100644
--- a/share/mk/build/_.mk
+++ b/share/mk/build/_.mk
@@ -23,12 +23,12 @@ MKDIR :=3D mkdir -p
 RM    :=3D rm
=20
=20
-NONSO_MAN :=3D $(shell $(FIND) $(MANDIR)/man*/ -type f \
+NONSO_MAN :=3D $(shell $(FIND) $(MANDIR)/ -type f \
                | $(GREP) '$(MANEXT)' \
                | $(XARGS) $(GREP) -l '^\.TH ' \
                | $(SORT) \
                | $(SED) 's,:,\\:,g')
-NONSO_MDOC :=3D $(shell $(FIND) $(MANDIR)/man*/ -type f \
+NONSO_MDOC :=3D $(shell $(FIND) $(MANDIR)/ -type f \
                | $(GREP) '$(MANEXT)' \
                | $(XARGS) $(GREP) -l '^\.Dt ' \
                | $(SORT) \
diff --git a/share/mk/build/src.mk b/share/mk/build/src.mk
index 4da142a74..86d024e2f 100644
--- a/share/mk/build/src.mk
+++ b/share/mk/build/src.mk
@@ -57,7 +57,7 @@ LD  :=3D $(CC) $(CFLAGS)
 _SRCPAGEDIRS   :=3D $(patsubst $(MANDIR)/%,$(_MANDIR)/%.d/,$(NONSO_MAN))=

=20
 _UNITS_src_src :=3D $(patsubst $(MANDIR)/%,$(_MANDIR)/%,$(shell \
-               $(FIND) $(MANDIR)/man*/ -type f \
+               $(FIND) $(MANDIR)/ -type f \
                | $(GREP) '$(MANEXT)' \
                | $(XARGS) $(GREP) -H '^\.\\" SRC BEGIN ' \
                | $(SED) 's,:\.\\" SRC BEGIN (,.d/,' \
diff --git a/share/mk/src.mk b/share/mk/src.mk
index 76deb8230..169bf7e6d 100644
--- a/share/mk/src.mk
+++ b/share/mk/src.mk
@@ -15,7 +15,7 @@ MANDIR :=3D $(srcdir)
 MANEXT :=3D \.[0-9]\w*\(\.man\)\?\(\.in\)\?$
=20
=20
-MANPAGES :=3D $(shell $(FIND) $(MANDIR)/man*/ -type f \
+MANPAGES :=3D $(shell $(FIND) $(MANDIR)/ -type f \
                | $(GREP) '$(MANEXT)' \
                | $(SORT) \
                | $(SED) 's,:,\\:,g')


--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------QbKNlqgTRoj1dooly0WPvSBB--

--------------8Gwaelvce4c8wLU3Fas5KTzu
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTKzPEACgkQnowa+77/
2zJEQg//SNrvSbvmr4a+Axx+j5URXKvMEntPu4xUS1yC1H/NcsLBC5Zmcd11OOUh
nY4Cgsl1HdoZU3TZfcfvcZs7IeRQbieMur1WgUKxIxluGhCctf9DeE5MF7IqfGhm
JcgIEBV+E0OgnGk1J0lsEoRh9FgxmKnkPY4OR/Zth7Gsq92T2IdlcpGMMKLaphjh
7+5B0PFnghW5vFw4C0pIWPAUZgfnz7HyLSCfEJPp+9BKF2Z90pBRZ6GaPb11t5Hm
99NkErsot81CVE5H73pVNA8WlcoCKB/tANYDtLRZjHYXaO0XljnT2oHiXL8uGxuv
kAZKZwdxRUmpWFH4SDo1fcwHrqTNBywz45tmxy+w8K/5T1Vibfqb8VrtEPv89Ajy
urz252X8H2cZspkjYSTy+lzVFIOgGP2hZY9X1rfeZOwP8uYmyFAKuwIlAKAqmB+R
8jsmdEVf6N/lFdMtUriX9pHN8GbO7cBPdU6gZvej0des2MQ6t4VEshe/Cplcfp4i
auqyQazz1e+a+rZBhb8koSu3hjFjKW9ng8/zzyUWa4IZyUqJP0cj3MFU7qTSD6cF
+JeNZRM8DnLyH1+9IVyxdKx1O1O0gQyBasal2PGr85yODrlhcyTY62CDNUot7h6w
y3B3kCfTta+bgpd8nXWkjYkeuykkU2BQpPRGO2by2YHBPFqjSaE=
=db47
-----END PGP SIGNATURE-----

--------------8Gwaelvce4c8wLU3Fas5KTzu--
