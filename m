Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3A7D663934E
	for <lists+linux-man@lfdr.de>; Sat, 26 Nov 2022 03:18:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229926AbiKZCSw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Nov 2022 21:18:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51318 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229514AbiKZCSw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Nov 2022 21:18:52 -0500
Received: from zimbra.cs.ucla.edu (zimbra.cs.ucla.edu [131.179.128.68])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D576C3136D
        for <linux-man@vger.kernel.org>; Fri, 25 Nov 2022 18:18:50 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id 780B3160078;
        Fri, 25 Nov 2022 18:18:50 -0800 (PST)
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id q3P_2QDQMEM0; Fri, 25 Nov 2022 18:18:49 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id E140216007F;
        Fri, 25 Nov 2022 18:18:48 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.9.2 zimbra.cs.ucla.edu E140216007F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
        s=78364E5A-2AF3-11ED-87FA-8298ECA2D365; t=1669429128;
        bh=nnQOYWA0BEgayLzpcrEE605UZInk/h/MSVkwcADcrJ8=;
        h=Content-Type:Message-ID:Date:MIME-Version:To:From:Subject;
        b=hUfEKbZXfV9Zf9Ky0JfCYagb2r3Fu4nE/uG9BTwrxJBZK8BLlIhtJwQpygJVu23rW
         PTvUrrlW4cvmdOVOQ9Q4dWps39Wga50yMJG+4sick+4DYz5FY46CDWdpKEQfhUjT2D
         IxFWzGAFrySkhe2MRoYIT/JFJlpsHzO6xZg5qQxo=
X-Virus-Scanned: amavisd-new at zimbra.cs.ucla.edu
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id xxmayRcWBY9Y; Fri, 25 Nov 2022 18:18:48 -0800 (PST)
Received: from [192.168.1.9] (cpe-172-91-119-151.socal.res.rr.com [172.91.119.151])
        by zimbra.cs.ucla.edu (Postfix) with ESMTPSA id A1BBF160078;
        Fri, 25 Nov 2022 18:18:48 -0800 (PST)
Content-Type: multipart/mixed; boundary="------------ARgyjQJ5FO8T63zzgyvO8LZ9"
Message-ID: <b91ea285-22f4-5f13-beb2-b0c74cc4db10@cs.ucla.edu>
Date:   Fri, 25 Nov 2022 18:18:46 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Time zone mailing list <tz@iana.org>,
        linux-man <linux-man@vger.kernel.org>, groff <groff@gnu.org>
References: <842adff8-8d8c-b189-8e6c-34be111b8b19@gmail.com>
 <20221123214019.6w2cv525fmr3akdr@illithid>
From:   Paul Eggert <eggert@cs.ucla.edu>
Organization: UCLA Computer Science Department
Subject: Re: Doubts about a typo fix
In-Reply-To: <20221123214019.6w2cv525fmr3akdr@illithid>
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a multi-part message in MIME format.
--------------ARgyjQJ5FO8T63zzgyvO8LZ9
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Thanks for the info about groff. You're right, tzdb man pages are=20
supposed to be portable to both groff and traditional troff. For the=20
latter I test with /usr/bin/nroff and /usr/bin/troff on Solaris 10,=20
which is the oldest troff I know that is still supported.

On 2022-11-23 13:40, G. Branden Robinson wrote:

> Strictly, this string definition should be updated to use the font's
> minus sign even if the formatter is groff (the `.g` register
> interpolates a true value).
>=20
>    .ie \n(.g \{\
>    .  ds : \:
>    .  ds - \f(CW\-\fP
>    .\}

If we did that, Groff would set a source string like "\*-\*-help" as=20
"=E2=88=92=E2=88=92help", with two instances of U+2212 MINUS SIGN instead=
 of U+002D=20
HYPHEN-MINUS. Therefore people couldn't cut and paste code examples out=20
of HTML or PDF, and into the shell.

"\f(CW-\fP" is used instead of plain "-" because when the output is PDF,=20
it is more clearly visible to humans as a hyphen-minus instead of as a=20
hyphen (U+2010 HYPHEN).


> Most people won't see a difference because groff 1.22.4 (and earlier
> releases going back to, I think, 2009) the man(7) macro package remaps
> the hyphen to the minus sign on the 'utf8' output device.=20

I noticed the abovementioned problem with PDF output, and I still see it=20
with groff 1.22.4.

I see a different issue with groff 1.22.4 on Ubuntu 22.10: I cannot=20
easily see the difference between "\f(CR-\fP" and "\f(CR\-\fP" on output=20
to PDF. If I cut from the output PDF and paste into Emacs or the=20
terminal, the former is indeed U+002D and the latter U+2202 and the=20
difference is readily visible in Emacs or the terminal; but it's not=20
readily visible in the PDF. However, this glitch is not a serious issue=20
for man pages since examples always contain hyphen-minuses not minus=20
signs, so I didn't worry about it. I assume that it's yet another font=20
thing, since the problem doesn't occur in the default Roman font.


> I also note that "CW" is an old, AT&T device-independent
> troff-compatible font name.[3]  groff's preferred name for this face is
> "CR", because for the past couple of decades a monospace font (often
> Courier) has generally been available in all four styles (roman,
> oblique, bold, and bold-oblique).

Thanks, I didn't know that was preferred. I installed the attached patch=20
into the tzdb development repository

--------------ARgyjQJ5FO8T63zzgyvO8LZ9
Content-Type: text/x-patch; charset=UTF-8;
 name="0001-Use-CR-font-instead-of-CW.patch"
Content-Disposition: attachment;
 filename="0001-Use-CR-font-instead-of-CW.patch"
Content-Transfer-Encoding: base64

RnJvbSAyMjBjMjFmNmI0MTY3Mzc4ZjQ2MzgyOGU2OTIxYzI4MWE4NWFiZTFmIE1vbiBTZXAg
MTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBQYXVsIEVnZ2VydCA8ZWdnZXJ0QGNzLnVjbGEuZWR1
PgpEYXRlOiBGcmksIDI1IE5vdiAyMDIyIDE1OjU2OjUyIC0wODAwClN1YmplY3Q6IFtQUk9Q
T1NFRF0gVXNlIENSIGZvbnQgaW5zdGVhZCBvZiBDVwoKU3VnZ2VzdGVkIGJ5IEcgQnJhbmRl
biBSb2JpbnNvbiBpbjoKaHR0cHM6Ly9tbS5pY2Fubi5vcmcvcGlwZXJtYWlsL3R6LzIwMjIt
Tm92ZW1iZXIvMDMyMzM2Lmh0bWwKLS0tCiBuZXdjdGltZS4zICAgIHwgMiArLQogbmV3c3Ry
ZnRpbWUuMyB8IDQgKystLQogbmV3dHpzZXQuMyAgICB8IDIgKy0KIHRpbWUycG9zaXguMyAg
fCAyICstCiB0emZpbGUuNSAgICAgIHwgMiArLQogdHpzZWxlY3QuOCAgICB8IDIgKy0KIHpk
dW1wLjggICAgICAgfCA2ICsrKy0tLQogemljLjggICAgICAgICB8IDIgKy0KIDggZmlsZXMg
Y2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvbmV3Y3RpbWUuMyBiL25ld2N0aW1lLjMKaW5kZXggMjkwN2Y4NTYuLmUyNWQ4NDFlIDEw
MDY0NAotLS0gYS9uZXdjdGltZS4zCisrKyBiL25ld2N0aW1lLjMKQEAgLTUsNyArNSw3IEBA
CiBhc2N0aW1lLCBjdGltZSwgZGlmZnRpbWUsIGdtdGltZSwgbG9jYWx0aW1lLCBta3RpbWUg
XC0gY29udmVydCBkYXRlIGFuZCB0aW1lCiAuU0ggU1lOT1BTSVMKIC5uZgotLmllIFxuKC5n
IC5kcyAtIFxmKENXLVxmUAorLmllIFxuKC5nIC5kcyAtIFxmKENSLVxmUAogLmVsIC5kcyAt
IFwtCiAuQiAjaW5jbHVkZSA8dGltZS5oPgogLlBQCmRpZmYgLS1naXQgYS9uZXdzdHJmdGlt
ZS4zIGIvbmV3c3RyZnRpbWUuMwppbmRleCBkNjhiYzMzNy4uZDVkOGVlMTAgMTAwNjQ0Ci0t
LSBhL25ld3N0cmZ0aW1lLjMKKysrIGIvbmV3c3RyZnRpbWUuMwpAQCAtNDAsNyArNDAsNyBA
QAogc3RyZnRpbWUgXC0gZm9ybWF0IGRhdGUgYW5kIHRpbWUKIC5TSCBTWU5PUFNJUwogLm5m
Ci0uaWUgXG4oLmcgLmRzIC0gXGYoQ1ctXGZQCisuaWUgXG4oLmcgLmRzIC0gXGYoQ1ItXGZQ
CiAuZWwgLmRzIC0gXC0KIC5CICNpbmNsdWRlIDx0aW1lLmg+CiAuUFAKQEAgLTU1LDcgKzU1
LDcgQEAgc3RyZnRpbWUgXC0gZm9ybWF0IGRhdGUgYW5kIHRpbWUKIC5pZSAnXChycScnIC5k
cyBycSBcJiJcIgogLmVsIC5kcyBycSBcKHJxXCIKIC5kZSBjCi0uaWUgXG4oLmcgXGYoQ1dc
XCQxXGZQXFwkMgorLmllIFxuKC5nIFxmKENSXFwkMVxmUFxcJDIKIC5lbCBcXCQxXFwkMgog
Li4KIC5kZSBxCmRpZmYgLS1naXQgYS9uZXd0enNldC4zIGIvbmV3dHpzZXQuMwppbmRleCBj
Mzc0Mjg1MC4uMWU3NWFjZjAgMTAwNjQ0Ci0tLSBhL25ld3R6c2V0LjMKKysrIGIvbmV3dHpz
ZXQuMwpAQCAtNSw3ICs1LDcgQEAKIHR6c2V0IFwtIGluaXRpYWxpemUgdGltZSBjb252ZXJz
aW9uIGluZm9ybWF0aW9uCiAuU0ggU1lOT1BTSVMKIC5uZgotLmllIFxuKC5nIC5kcyAtIFxm
KENXLVxmUAorLmllIFxuKC5nIC5kcyAtIFxmKENSLVxmUAogLmVsIC5kcyAtIFwtCiAuQiAj
aW5jbHVkZSA8dGltZS5oPgogLlBQCmRpZmYgLS1naXQgYS90aW1lMnBvc2l4LjMgYi90aW1l
MnBvc2l4LjMKaW5kZXggZTdjNjkyMDYuLmUxM2M0MzFjIDEwMDY0NAotLS0gYS90aW1lMnBv
c2l4LjMKKysrIGIvdGltZTJwb3NpeC4zCkBAIC01LDcgKzUsNyBAQAogdGltZTJwb3NpeCwg
cG9zaXgydGltZSBcLSBjb252ZXJ0IHNlY29uZHMgc2luY2UgdGhlIEVwb2NoCiAuU0ggU1lO
T1BTSVMKIC5uZgotLmllIFxuKC5nIC5kcyAtIFxmKENXLVxmUAorLmllIFxuKC5nIC5kcyAt
IFxmKENSLVxmUAogLmVsIC5kcyAtIFwtCiAuQiAjaW5jbHVkZSA8dGltZS5oPgogLlBQCmRp
ZmYgLS1naXQgYS90emZpbGUuNSBiL3R6ZmlsZS41CmluZGV4IDlkMzEyMjU1Li5jM2U4NmM2
MiAxMDA2NDQKLS0tIGEvdHpmaWxlLjUKKysrIGIvdHpmaWxlLjUKQEAgLTExLDcgKzExLDcg
QEAgdHpmaWxlIFwtIHRpbWV6b25lIGluZm9ybWF0aW9uCiAuZGUgcQogXFwkM1wqKGxxXFwk
MVwqKHJxXFwkMgogLi4KLS5pZSBcbiguZyAuZHMgLSBcZihDVy1cZlAKKy5pZSBcbiguZyAu
ZHMgLSBcZihDUi1cZlAKIC5lbCAuZHMgLSBcLQogVGhlIHRpbWV6b25lIGluZm9ybWF0aW9u
IGZpbGVzIHVzZWQgYnkKIC5CUiB0enNldCAoMykKZGlmZiAtLWdpdCBhL3R6c2VsZWN0Ljgg
Yi90enNlbGVjdC44CmluZGV4IDUzYTM0Y2Y2Li44NDZiODY3YiAxMDA2NDQKLS0tIGEvdHpz
ZWxlY3QuOAorKysgYi90enNlbGVjdC44CkBAIC00LDcgKzQsNyBAQAogLlNIIE5BTUUKIHR6
c2VsZWN0IFwtIHNlbGVjdCBhIHRpbWV6b25lCiAuU0ggU1lOT1BTSVMKLS5pZSBcbiguZyAu
ZHMgLSBcZihDVy1cZlAKKy5pZSBcbiguZyAuZHMgLSBcZihDUi1cZlAKIC5lbCAuZHMgLSBc
LQogLmRzIGQgIiBkZWdyZWVzCiAuZHMgbSAiIG1pbnV0ZXMKZGlmZiAtLWdpdCBhL3pkdW1w
LjggYi96ZHVtcC44CmluZGV4IDFmZjkyNjM5Li4xNzBlMThkNiAxMDA2NDQKLS0tIGEvemR1
bXAuOAorKysgYi96ZHVtcC44CkBAIC0xOCw3ICsxOCw3IEBAIHpkdW1wIFwtIHRpbWV6b25l
IGR1bXBlcgogLmRlIHEKIFxcJDNcKihscVxcJDFcKihycVxcJDIKIC4uCi0uaWUgXG4oLmcg
LmRzIC0gXGYoQ1ctXGZQCisuaWUgXG4oLmcgLmRzIC0gXGYoQ1ItXGZQCiAuZWwgLmRzIC0g
XC0KIFRoZQogLkIgemR1bXAKQEAgLTE1MSw3ICsxNTEsNyBAQCBIZXJlIGlzIGFuIGV4YW1w
bGUgb2YgdGhlIG91dHB1dCwgd2l0aCB0aGUgbGVhZGluZyBlbXB0eSBsaW5lIG9taXR0ZWQu
CiB0YWJiZWQgY29sdW1ucyBsaW5lIHVwLikKIC5uZgogLnNwCi0uaWYgXG4oLmcgLmZ0IENX
CisuaWYgXG4oLmcgLmZ0IENSCiAuaWYgdCAuaW4gKy41aQogLmlmIG4gLmluICsyCiAubnIg
dyBcdycxODk2LTAxLTEzICAndStcbiguaQpAQCAtMTg0LDcgKzE4NCw3IEBAIFVULCBhIHN0
YW5kYXJkIHRpbWUgYWJicmV2aWF0ZWQgSFNULgogSGVyZSBhcmUgZXhjZXJwdHMgZnJvbSBh
bm90aGVyIGV4YW1wbGU6CiAubmYKIC5zcAotLmlmIFxuKC5nIC5mdCBDVworLmlmIFxuKC5n
IC5mdCBDUgogLmlmIHQgLmluICsuNWkKIC5pZiBuIC5pbiArMgogVFo9IkV1cm9wZS9Bc3Ry
YWtoYW4iCmRpZmYgLS1naXQgYS96aWMuOCBiL3ppYy44CmluZGV4IDhiNzdlYTEyLi5mMzQ1
Zjk0NCAxMDA2NDQKLS0tIGEvemljLjgKKysrIGIvemljLjgKQEAgLTI0LDcgKzI0LDcgQEAg
emljIFwtIHRpbWV6b25lIGNvbXBpbGVyCiAuZWwgLmRzID4gXChyYQogLmllIFxuKC5nIFx7
XAogLiAgZHMgOiBcOgotLiAgZHMgLSBcZihDVy1cZlAKKy4gIGRzIC0gXGYoQ1ItXGZQCiAu
XH0KIC5lbCBce1wKIC4gIGRzIDoKLS0gCjIuMzcuMgoK

--------------ARgyjQJ5FO8T63zzgyvO8LZ9--
