Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 159D36A1FD1
	for <lists+linux-man@lfdr.de>; Fri, 24 Feb 2023 17:40:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229532AbjBXQkh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 24 Feb 2023 11:40:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40384 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229669AbjBXQkh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 24 Feb 2023 11:40:37 -0500
Received: from mail-yw1-x1134.google.com (mail-yw1-x1134.google.com [IPv6:2607:f8b0:4864:20::1134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EDEF13D931
        for <linux-man@vger.kernel.org>; Fri, 24 Feb 2023 08:40:34 -0800 (PST)
Received: by mail-yw1-x1134.google.com with SMTP id 00721157ae682-53916ab0c6bso45849477b3.7
        for <linux-man@vger.kernel.org>; Fri, 24 Feb 2023 08:40:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112; t=1677256834;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=aq1XcwF5k84M4uI/tiZ3Joilrp/zQIgVNLRzj5gaKm4=;
        b=FiYRZfq8M7KByCV0dLek6KLbDfbhZjlE1ftyeH8cOAoGq8+c3izVaASWp5gJHHGQHP
         2GyikMVqkvKfqDAqL2NSV21j5OoTf9im6/YpmYDT8mDzxQc8keVUX9QZPnHnCjTEarFP
         KW4VQfhMu9FlBKyINmQsY2Vx+2qdYlt3flcvGM6lO46hDUgUidQNlXlZGvESQ8PhoQbN
         PSXYxN8viGOTUtWWyh2CmPpErj9sFKro77mDgIQK6GJTYSRZI8GqJikabMjg1st70Fpi
         EPB5TChNXJpXbDJfSRRAYvgMurVhZRfx8gqL7HlYvdKAuGCop2fG01yLVF2O+TsA7eAZ
         JkIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677256834;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aq1XcwF5k84M4uI/tiZ3Joilrp/zQIgVNLRzj5gaKm4=;
        b=vaTDMrcBHm7tVvAH+la7b9qvS24PMJqE8vWa+0rxvWPHFycKkE7k/7UDtcZC4Qj4Q1
         l7VkLNMfhk0WJpjsJZ3FNw9iE6+o7KazpSTqgoq7k5M7/Nj8AVMwZEf5mVHi01OGnrrk
         YZTjxGZnSYlMCusJnBDiRRG2MYHzAa79o4k4r1mxi4yClETCOLE4jGd+2cnqbbHsmIs/
         IOOmERrkSOOyLDaclFFJ5iK45MFVLH85LItdtm/hDVq93TlZpAp05NpCwyCvn32nClyU
         IKn045t1ZWPe6hMRDMZTVUwDAJHAmFHzWu5C/Ab50cUed0D6JtdBLq4p4Awj4vsjd1bC
         Xw+w==
X-Gm-Message-State: AO0yUKW4LGWnnlGHh7AQLBdS0JQASE25gluNw9eyIo+t9Xby8e+vdGCQ
        mepMQ0MymbKRJISGkGacbOSXZ6jYUj580zmhSBVjthbpehJWS4qksXQ=
X-Google-Smtp-Source: AK7set/aU3n1Kcivp8YUSFoRvfbALyDlvNqQVEpoLUlsJEvlU+0HBXuZFnTGAiqaokSYlES+ZX0po8ss3p+WKBXkuw0=
X-Received: by 2002:a81:b649:0:b0:530:bbd3:798b with SMTP id
 h9-20020a81b649000000b00530bbd3798bmr4845770ywk.0.1677256834012; Fri, 24 Feb
 2023 08:40:34 -0800 (PST)
MIME-Version: 1.0
References: <CAJ0cOr-v1GDCqsU86w-rZVvejtppOAW56FxApFPnfPwRmAd47w@mail.gmail.com>
 <CAJ0cOr-x+hg5cH_wHH+uJ4co69qYZN425d-nFdoqFtuM79Kxzg@mail.gmail.com>
 <CAJgzZooiJVgKDH9KkW_FKZJThDVLJjqGLQ3RB1NnHVQVbA-QjQ@mail.gmail.com>
 <2d8c77b3-ba32-1494-037b-ad609e1c263a@gmail.com> <CAJ0cOr_+tgOp4VRvHkPa6o10sTBpM8+T6-DJK2a1JkUBvrHFmA@mail.gmail.com>
In-Reply-To: <CAJ0cOr_+tgOp4VRvHkPa6o10sTBpM8+T6-DJK2a1JkUBvrHFmA@mail.gmail.com>
From:   Almaz Mingaleev <mingaleev@google.com>
Date:   Fri, 24 Feb 2023 16:40:23 +0000
Message-ID: <CAJ0cOr_4QjacU1miDEZGjgkLtVaLk8f-KHVsB_J=c=-C+DTXBA@mail.gmail.com>
Subject: Re: %z and %Z in strftime man page require clarification
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     enh <enh@google.com>, mtk.manpages@gmail.com,
        linux-man@vger.kernel.org, Paul Eggert <eggert@cs.ucla.edu>
Content-Type: multipart/mixed; boundary="000000000000caca9205f574c9a0"
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--000000000000caca9205f574c9a0
Content-Type: text/plain; charset="UTF-8"

I've started a new thread, but can't see it in the mailing list archives.
Please see the patch attached.


On Wed, 15 Feb 2023 at 17:34, Almaz Mingaleev <mingaleev@google.com> wrote:
>
> Hi Alex,
>
> Patch is somewhat ready, I will send it once a teammate reviews it.
> Should be ready by tomorrow.
>
> I'd definitely appreciate if Paul checks it too :)
>
>
> On Wed, 15 Feb 2023 at 17:21, Alejandro Colomar <alx.manpages@gmail.com> wrote:
> >
> > Hi Elliott, Almaz,
> >
> > On 2/13/23 17:31, enh wrote:
> > > (given how complex a topic this is -- based on the discussion on the
> > > tz mailing list -- you might want to send a specific suggestion in the
> > > form of a patch...)
> >
> > Thanks, I agree.  This is too complex, and it would be nice to
> > see a more specific suggestion in the form of a patch.
> > I CCed Paul, in case he can help.
> >
> > Cheers,
> >
> > Alex
> >
> > >
> > > On Mon, Feb 13, 2023 at 1:15 AM Almaz Mingaleev <mingaleev@google.com> wrote:
> > >>
> > >> Friendly ping.
> > >>
> > >>
> > >> On Thu, 28 Jul 2022 at 09:16, Almaz Mingaleev <mingaleev@google.com> wrote:
> > >>>
> > >>> Hi Michael,
> > >>> Current strftime specification in C language standard is not accurate.
> > >>> It tells that tm_isdst is enough to find out time zone's offset. But
> > >>> that's not true, for example Europe/Lisbon has changed [0] its
> > >>> standard offset from 00:00 to 01:00 and back to 00:00, so an exact
> > >>> date is needed to answer that.
> > >>>
> > >>> To get correct answer with the current glibc tm struct should either
> > >>> come from localtime or there should be a mktime call prior to
> > >>> strftime. You can find a repro example and discussion here [1]. Paul
> > >>> Eggert has proposed a fix to C standard [2].
> > >>>
> > >>> Should man pages reflect that i.e. mention that there should be
> > >>> localtime/mktime calls for %z and %Z?
> > >>>
> > >>> Thanks,
> > >>> Almaz
> > >>>
> > >>> P.S. I am resending the email. My previous attempt was bounced back as
> > >>> it wasn't TEXT/PLAIN.
> > >>>
> > >>> [0] https://github.com/eggert/tz/blob/a249a0c64b2f87a24c7f1aab43056fb597c95b96/europe#L2400
> > >>> [1] https://mm.icann.org/pipermail/tz/2022-July/031668.html
> > >>> [2] https://mm.icann.org/pipermail/tz/2022-July/031674.html
> >
> > --
> > <http://www.alejandro-colomar.es/>
> > GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--000000000000caca9205f574c9a0
Content-Type: application/octet-stream; 
	name="0001-Add-notes-about-timezone-formatting-in-strftime.patch"
Content-Disposition: attachment; 
	filename="0001-Add-notes-about-timezone-formatting-in-strftime.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_leirekuw0>
X-Attachment-Id: f_leirekuw0

RnJvbSBlMTE2YzM5NGU4YTE1NzM2YzIxNTVmNjMzNTk2NGFhYTE3ODAyYmMxIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBBbG1heiBNaW5nYWxlZXYgPG1pbmdhbGVldkBnb29nbGUuY29t
PgpEYXRlOiBUaHUsIDIzIEZlYiAyMDIzIDEyOjMwOjE2ICswMDAwClN1YmplY3Q6IFtQQVRDSF0g
QWRkIG5vdGVzIGFib3V0IHRpbWV6b25lIGZvcm1hdHRpbmcgaW4gc3RyZnRpbWUuCgpBY2NvcmRp
bmcgdG8gbGliYyBzcGVjaWZpY2F0aW9uIGluIG9yZGVyIHRvIGZpbmQgcmVwbGFjZW1lbnRzIGZv
cgoleiBhbmQgJVogdGhlIG9ubHkgdG0gc3RydWN0IGZpZWxkIG5lZWRlZCBpcyB0bV9pc2RzdC4g
SG93ZXZlcgpnb3Zlcm5tZW50cyBjaGFuZ2Ugb2Zmc2V0cywgYm90aCBzdGFuZGFyZCBhbmQgZGF5
bGlnaHQgc2F2aW5nLgoKRm9yIGV4YW1wbGUsIEV1cm9wZS9MaXNib24gY2hhbmdlZCBpdHMgc3Rh
bmRhcmQgb2Zmc2V0IGZyb20gR01UKzEKdG8gR01UIGluIDE5OTYgWzFdLiBTbyBpbiBvcmRlciB0
byBmaW5kIG91dCAleiByZXBsYWNlbWVudCBleGFjdAp0aW1lIGlzIG5lZWRlZAoKUGFjaWZpYy9G
aWppIGRvZXMgbm90IG9ic2VydmUgRFNUIHNpbmNlIDIwMjEgWzJdLiBSZXF1ZXN0aW5nIGl0cwpk
YXlsaWdodCBzYXZpbmcgb2Zmc2V0IChldmVuIHdpdGggZGF0ZSBhbmQgdGltZSBzcGVjaWZpZWQg
aW4gdG0Kc3RydWN0IGFyZ3VtZW50KSBqdXN0IG1ha2VzIG5vIHNlbnNlIGFuZCBzdHJmdGltZSBo
YXMgbm8gbWVhbnMKdG8gaW5kaWNhdGUgaW52YWxpZCBjb21iaW5hdGlvbi4KClRoZSBzYW1lIHRo
aW5ncyBhcmUgYXBwbGljYWJsZSB0byAlWiBhcyBhYmJyZXZpYXRpb24gYWxzbyBjaGFuZ2UKb3Zl
ciB0aW1lLgoKVG8gb3ZlcmNvbWUgdGhlc2UgaXNzdWVzOgoxLiB0bSBzdHJ1Y3Qgc2hvdWxkIHBv
aW50IHRvIGFuIGV4YWN0IGRhdGUgYW5kIHRtX2lzZHN0IGZsYWcKc2hvdWxkIGJlIHByb3ZpZGVk
IGlmIHBvc3NpYmxlIGFzIGRhdGVzIGNhbiBvdmVybGFwIHdoZW4gY2xvY2tzCmdvIGJhY2t3YXJk
cy4KCjIuIEVpdGhlciBta3RpbWUgc2hvdWxkIGJlIGNhbGxlZCB0byBicmluZyB0bSBzdHJ1Y3Qg
aW50byB2YWxpZApzdGF0ZSBhbmQgZmlsbCBmaWVsZHMgbGlrZSB0bV96b25lIGFuZCB0bV9nbXRv
ZmYgb3IgdG0gc3RydWN0CnNob3VsZCBjb21lcyBmcm9tIGZ1bmN0aW9ucyBsaWtlIGxvY2FsdGlt
ZS4KClsxXSBodHRwczovL2dpdGh1Yi5jb20vZWdnZXJ0L3R6L2Jsb2IvNjc2NWYwOTRhYTAwNGNh
ODQwNTdkNDcyMWI5NDEzNjI2NmRkOTc4Yy9ldXJvcGUjTDIxMTkKWzJdIGh0dHBzOi8vZ2l0aHVi
LmNvbS9lZ2dlcnQvdHovYmxvYi82NzY1ZjA5NGFhMDA0Y2E4NDA1N2Q0NzIxYjk0MTM2MjY2ZGQ5
NzhjL2F1c3RyYWxhc2lhI0wzNjYKClNpZ25lZC1vZmYtYnk6IEFsbWF6IE1pbmdhbGVldiA8bWlu
Z2FsZWV2QGdvb2dsZS5jb20+Ci0tLQogbWFuMy9zdHJmdGltZS4zIHwgNDUgKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgNDUgaW5z
ZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL21hbjMvc3RyZnRpbWUuMyBiL21hbjMvc3RyZnRpbWUu
MwppbmRleCA1N2IyYTM4YWEuLjAxNzhmZDRlYiAxMDA2NDQKLS0tIGEvbWFuMy9zdHJmdGltZS4z
CisrKyBiL21hbjMvc3RyZnRpbWUuMwpAQCAtNjQ1LDYgKzY0NSw1MSBAQCBhbmQgb2YgdGhlc2Us
IGl0IGlzIG9ubHkgcmVhbGx5IHVzZWZ1bCB3aXRoCiBBbiBvcHRpb25hbCBkZWNpbWFsIHdpZHRo
IHNwZWNpZmllciBtYXkgZm9sbG93IHRoZSAocG9zc2libHkgYWJzZW50KSBmbGFnLgogSWYgdGhl
IG5hdHVyYWwgc2l6ZSBvZiB0aGUgZmllbGQgaXMgc21hbGxlciB0aGFuIHRoaXMgd2lkdGgsCiB0
aGVuIHRoZSByZXN1bHQgc3RyaW5nIGlzIHBhZGRlZCAob24gdGhlIGxlZnQpIHRvIHRoZSBzcGVj
aWZpZWQgd2lkdGguCisuU1MgVGltZXpvbmUgZm9ybWF0dGluZworVGltZXpvbmVzIGNoYW5nZSBm
cmVxdWVudGx5IGFuZCBhbnkgcGFydCBvZiBpdCBjYW4gY2hhbmdlOiBydWxlcyBieSB3aGljaAor
ZGF5bGlnaHQgc2F2aW5nIHRpbWUgc3RhcnRzIGFuZCBlbmRzLCBvciB3aGV0aGVyIGl0IHN0YXJ0
cyBhdCBhbGwsIGl0cworc3RhbmRhcmQgYW5kIGRheWxpZ2h0IHNhdmluZyBvZmZzZXRzLiBJbiBv
cmRlciB0byBmaW5kIG51bWVyaWMgb2Zmc2V0CisuUkIgKCAleiApLAorbmFtZSBvciBhYmJyZXZp
YXRpb24KKy5SQiAoICVaICkKK2V4YWN0IGRhdGUvdGltZQorLlJJICggdG1fc2VjICwKKy5JUiB0
bV9taW4gLAorLklSIHRtX2hvdSByLAorLklSIHRtX21kYXkgLAorLklSIHRtX21vbgorYW5kCisu
SVIgdG1feWVhcgorZmllbGRzKSBhbmQgRFNUIGZsYWcKKy5SSSAoIHRtX2lzZHN0CitmaWVsZCkg
YXMgdGhlcmUgaXMgYW4gb3ZlcmxhcCB3aGVuIGNsb2NrcyBnbyBiYWNrd2FyZHMgaGF2ZSB0byBi
ZSBzcGVjaWZpZWQuCisKK0J1dCBhY2NvcmRpbmcgdG8gdGhlIGxhdGVzdCBsaWJjIHNwZWNpZmlj
YXRpb24gb25seQorLklSIHRtX2lzZHN0CitmaWVsZCBpcyBuZWVkZWQgdG8gY2FsY3VsYXRlIHJl
cGxhY2VtZW50cyBmb3IKKy5CUiAlegorYW5kCisuQlIgJVouCitUaGF0IGRvZXMgbm90IGNvbmZv
cm0gdG8gdGhlIHJlYWxpdHkgb2YgdGltZXpvbmVzLgorZ2xpYmMgaW1wbGVtZW50YXRpb24gZG9l
cyBub3QgZm9sbG93IGxpYmMgc3BlY2lmaWNhdGlvbiBhbmQgdXNlcworLklSIHRtX2dtdG9mZgor
Zm9yCisuQlIgJXoKK2FuZAorLklSIHRtX3pvbmUKK2ZvcgorLkJSICVaCityZXBsYWNlbWVudHMu
IFRvIHBvcHVsYXRlIHRoZXNlIGZpZWxkcyB3aXRoIHRoZSByaWdodCB2YWx1ZXMgZWl0aGVyIGNh
bGwKKy5CUiBta3RpbWUgKCkKK2JlZm9yZSBwYXNzaW5nCisuSVIgdG0KK3N0cnVjdCB0bworLkJS
IHN0cmZ0aW1lICgpCitvciBtYWtlIHN1cmUgdGhhdAorLklSIHRtCitzdHJ1Y3QgY29tZXMgZnJv
bQorLkJSIGxvY2FsdGltZSAoKS4KKwogLlNIIEJVR1MKIElmIHRoZSBvdXRwdXQgc3RyaW5nIHdv
dWxkIGV4Y2VlZAogLkkgbWF4Ci0tIAoyLjM5LjIuNjM3LmcyMWIwNjc4ZDE5LWdvb2cKCg==
--000000000000caca9205f574c9a0--
