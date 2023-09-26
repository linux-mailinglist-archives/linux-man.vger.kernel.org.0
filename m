Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2001C7AE386
	for <lists+linux-man@lfdr.de>; Tue, 26 Sep 2023 03:58:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229934AbjIZB6x (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 25 Sep 2023 21:58:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44472 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229501AbjIZB6w (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 25 Sep 2023 21:58:52 -0400
Received: from mail-qv1-xf2a.google.com (mail-qv1-xf2a.google.com [IPv6:2607:f8b0:4864:20::f2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2523BD8
        for <linux-man@vger.kernel.org>; Mon, 25 Sep 2023 18:58:46 -0700 (PDT)
Received: by mail-qv1-xf2a.google.com with SMTP id 6a1803df08f44-65af8d30b33so22063476d6.1
        for <linux-man@vger.kernel.org>; Mon, 25 Sep 2023 18:58:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1695693525; x=1696298325; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=yXidcbO56eQ5dVNWMpWNyco7Beh4TgpP2sc61nVKYcE=;
        b=dLfHj6Ob5LN1IHiewEo3Fc21aOkl+YpecTZtyG1n7y3pTZkL4PAiQngGV20bdmWvAb
         D2kiB8BBMpib0rq8uU361FtoBRfTfOFDGEUiC2TmuDKbjXX3PCBmuXka+lIo7MSi8O6r
         QvxVjUGUjd3pldl7Es1CO3u1Df8RTvclPZZEzQJhTucL8UlBy0zIOzmb8q82h6BEVuek
         mjL/VhHVqI/EK/CQMY4RazN0xR1es8lYJmZCWdkUs11CXFZqW8zvec235dgXaYFKo4g4
         Ptx2vyFTKwqe5EamRqz9FCTEeFC/Ahwba91mEN1w/T3zibk79PuWSrvXm2cGEB6gsriw
         5NOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695693525; x=1696298325;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yXidcbO56eQ5dVNWMpWNyco7Beh4TgpP2sc61nVKYcE=;
        b=baR76z9zQvL1nPLVWhharPyJ1QRAOp3C2kH4+9yL1WdYprL+nBr37y/EJYUQG5fQuZ
         2FH2b7XH03qwl3g3vt2e+2TxgLONtWMjtFifI5PdnWw2zzldpSq8spxQ9G7cNM9odWtQ
         c4m0aR9LFUFTTK5/G8qa1jWWO68TyrpYyJoqzGB5bPF3/aQcxtMZLagZhadfS77/08IV
         AZQuQQJRVUIoAQDhzQkyK5QrRoRhqZgC1q9MzpGyknKDWSu6cUO3N90OHCMCC0RBUeVR
         5/EmVB+B1SRhQKlIoW3QOM5qXa8q/EGGeOpGm7O5EYZrmSRLFIiTqNWd5F+xgR6HMqTz
         N3kA==
X-Gm-Message-State: AOJu0YzuOueyXDtrZ3qG3fzyJNHJoUdr7jvqiG0Y13mzH+iNC8syqgxz
        oBX+mIitzyKAh6cKKoE63J9p40GqJ8y/+7TfE40ALgnRqbv8ooWPzds=
X-Google-Smtp-Source: AGHT+IEQ5+QW2LLTgzg+I2LSQsbxlJ3obgGIOUKBqTGGB7rHq0rbCGMjMw7sgi686CpJJTHse8PrVpiaDwNES6qs0jo=
X-Received: by 2002:a05:6214:4105:b0:65b:134:ed27 with SMTP id
 kc5-20020a056214410500b0065b0134ed27mr1377384qvb.4.1695693525047; Mon, 25 Sep
 2023 18:58:45 -0700 (PDT)
MIME-Version: 1.0
References: <CAJgzZoqxNGmDMbp8Dh0n5TQwDu-8POf8=9fyaaRUwLVRw2skZg@mail.gmail.com>
 <20230223213758.pixv4m6uf4gzhxxo@jwilk.net> <CAJgzZordjqNX4LHq9K9uatcWOoXO0whbHhuOeKgawtzvQ_OE+A@mail.gmail.com>
 <CAJgzZoqTNiEadyD5uAY17FAwPeMwGzqKVqPaaLy-pTz0tzu=qQ@mail.gmail.com>
 <CAJgzZood-DOXNw46anDp1wSGO8GzdgJM0gAq2dgG2cAyvXQGEA@mail.gmail.com> <lpxo26pxl32te6ljhxixhde74ta7jjv5ytw53grhevejdjnyn3@j5zizuxq3l5j>
In-Reply-To: <lpxo26pxl32te6ljhxixhde74ta7jjv5ytw53grhevejdjnyn3@j5zizuxq3l5j>
From:   enh <enh@google.com>
Date:   Mon, 25 Sep 2023 18:58:33 -0700
Message-ID: <CAJgzZoovvm9H9aCP_7Kx9dCtm_ExMReeWmAQ2RM4++zRLKEe6Q@mail.gmail.com>
Subject: Re: [PATCH] fseek.3: incorporate fseeko()/ftello().
To:     Alejandro Colomar <alx@kernel.org>
Cc:     Jakub Wilk <jwilk@jwilk.net>, linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Rob Landley <rob@landley.net>
Content-Type: multipart/mixed; boundary="00000000000035d0660606396a8d"
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,
        USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--00000000000035d0660606396a8d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

d'oh! rebased...

On Mon, Sep 25, 2023 at 5:05=E2=80=AFPM Alejandro Colomar <alx@kernel.org> =
wrote:
>
> Hi Elliott,
>
> On Tue, Sep 19, 2023 at 01:49:33PM -0700, enh wrote:
> > On Fri, Feb 24, 2023 at 10:06=E2=80=AFAM enh <enh@google.com> wrote:
> > >
> > > (sending again as plain text.)
> > >
> > >
> > > On Fri, Feb 24, 2023 at 10:02 AM enh <enh@google.com> wrote:
> > > >
> > > >
> > > >
> > > > On Thu, Feb 23, 2023 at 1:38 PM Jakub Wilk <jwilk@jwilk.net> wrote:
> > > >>
> > > >> * enh <enh@google.com>, 2023-02-22 12:42:
> > > >> > The
> > > >> >+.BR fseeko ()
> > > >> >+end
> > > >>
> > > >> s/end/and/
> > > >
> > > >
> > > > ack. will fix.
> > > >
> > > >>
> > > >> >+.BR ftello ()
> > > >> >+functions are similar, except that the
> > > >>
> > > >> "similar, except..." sounds awkward to me. (And it's not the wordi=
ng
> > > >> fseeko.3 used.)
> > > >
> > > >
> > > > sounds right to me, and seems widely used in existing pages though?=
 strncmp(), for example. ("same, except" is also used in existing pages, bu=
t seems less common.)
> > > >
> > > > but at a higher level (the "not the wording fseeko.3" used) i vacil=
lated there between "just copy" and "try to improve" because i have two pro=
blems i'm trying to solve:
> > > >
> > > > 1. someone (rob) who knows the c library about as well as anyone i =
know who _isn't_ a c library maintainer themselves wasn't aware of fseeko()=
/ftello(), and the existing fseek() page misled them into thinking that fse=
tpos()/fgetpos() was their only option.
> > > >
> > > > 2. in 2023 where most people assume sizeof(long)*8 =3D=3D 64, a lot=
 of people don't understand why fseek()/ftell() isn't "good enough". my ini=
tial version of the patch talked more about ILP32 systems and LLP64 systems=
 (aka "Windows") where "long" isn't equivalent to "int64_t". (but the need =
to talk about _FILE_OFFSET_BITS too made the whole section a bit unwieldy.)
> > > >
> > > > any version of this patch fixes #1.
> > > >
> > > > fixing #2 well is the trickier part, and i'm curious if there are a=
ny other opinions there before i send out a new version of the patch?
> > > >
> > > >>
> > > >> --
> > > >> Jakub Wilk
>
> This patch didn't apply.  The reason are some formatting fixes recently
> applied to that page (and many others) a couple of months ago.  Please
> rebase to master.
>
> Cheers,
> Alex

--00000000000035d0660606396a8d
Content-Type: application/octet-stream; 
	name="0001-fseek.3-incorporate-fseeko-ftello.patch"
Content-Disposition: attachment; 
	filename="0001-fseek.3-incorporate-fseeko-ftello.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_lmzo4osi0>
X-Attachment-Id: f_lmzo4osi0

RnJvbSA2ZWYzODg2OTk0OTRmNWFkNGUwN2MyNTQ3NzAwOTRlZjNlNDBlZWI4IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBFbGxpb3R0IEh1Z2hlcyA8ZW5oQGdvb2dsZS5jb20+CkRhdGU6
IE1vbiwgMjUgU2VwIDIwMjMgMTg6NTY6MzIgLTA3MDAKU3ViamVjdDogW1BBVENIXSBmc2Vlay4z
OiBpbmNvcnBvcmF0ZSBmc2Vla28oKS9mdGVsbG8oKS4KCmZzZWVrbygpL2Z0ZWxsbygpIGFyZSBp
bXBvcnRhbnQgZm9yIGNvZGUgdGhhdCBuZWVkcyB0byB3b3JrIHdpdGggbGFyZ2UKZmlsZXMgb24g
TFAzMiBzeXN0ZW1zIG9yIExMUDY0IHN5c3RlbXMgKFdpbmRvd3MpLCBidXQgY3VycmVudGx5IGhh
cmQgdG8KZmluZCB1bmxlc3MgeW91IGFscmVhZHkga25vdyB3aGF0IHlvdSdyZSBsb29raW5nIGZv
ci4KClNpZ25lZC1vZmYtYnk6IEVsbGlvdHQgSHVnaGVzIDxlbmhAZ29vZ2xlLmNvbT4KLS0tCiBt
YW4zL2ZzZWVrLjMgIHwgIDgxICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0t
LQogbWFuMy9mc2Vla28uMyB8IDEwMyArLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLQogbWFuMy9mdGVsbG8uMyB8ICAgMiArLQogMyBmaWxlcyBjaGFuZ2Vk
LCA3NyBpbnNlcnRpb25zKCspLCAxMDkgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvbWFuMy9m
c2Vlay4zIGIvbWFuMy9mc2Vlay4zCmluZGV4IDdhMDI0OTYxZS4uNjk0NmFkNmI2IDEwMDY0NAot
LS0gYS9tYW4zL2ZzZWVrLjMKKysrIGIvbWFuMy9mc2Vlay4zCkBAIC0xMiw5ICsxMiwxNSBAQAog
LlwiCiAuXCIgQ29udmVydGVkIGZvciBMaW51eCwgTW9uIE5vdiAyOSAxNToyMjowMSAxOTkzLCBm
YWl0aEBjcy51bmMuZWR1CiAuXCIKKy5cIiBmc2Vla28vZnRlbGxvIHBvcnRpb25zOgorLlwiCisu
XCIgQ29weXJpZ2h0IDIwMDEgQW5kcmllcyBCcm91d2VyIDxhZWJAY3dpLm5sPi4KKy5cIgorLlwi
IFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBMaW51eC1tYW4tcGFnZXMtY29weWxlZnQKKy5cIgog
LlRIIGZzZWVrIDMgKGRhdGUpICJMaW51eCBtYW4tcGFnZXMgKHVucmVsZWFzZWQpIgogLlNIIE5B
TUUKLWZnZXRwb3MsIGZzZWVrLCBmc2V0cG9zLCBmdGVsbCwgcmV3aW5kIFwtIHJlcG9zaXRpb24g
YSBzdHJlYW0KK2ZnZXRwb3MsIGZzZWVrLCBmc2Vla28sIGZzZXRwb3MsIGZ0ZWxsLCBmdGVsbG8s
IHJld2luZCBcLSByZXBvc2l0aW9uIGEgc3RyZWFtCiAuU0ggTElCUkFSWQogU3RhbmRhcmQgQyBs
aWJyYXJ5CiAuUkkgKCBsaWJjICIsICIgXC1sYyApCkBAIC0yNSwxMSArMzEsMjUgQEAgU3RhbmRh
cmQgQyBsaWJyYXJ5CiAuQkkgImludCBmc2VlayhGSUxFICoiIHN0cmVhbSAiLCBsb25nICIgb2Zm
c2V0ICIsIGludCAiIHdoZW5jZSApOwogLkJJICJsb25nIGZ0ZWxsKEZJTEUgKiIgc3RyZWFtICk7
CiAuUFAKKy5CSSAiaW50IGZzZWVrbyhGSUxFICoiIHN0cmVhbSAiLCBvZmZfdCAiIG9mZnNldCAi
LCBpbnQgIiB3aGVuY2UgKTsKKy5CSSAib2ZmX3QgZnRlbGxvKEZJTEUgKiIgc3RyZWFtICk7Cisu
UFAKIC5CSSAidm9pZCByZXdpbmQoRklMRSAqIiBzdHJlYW0gKTsKIC5QUAogLkJJICJpbnQgZmdl
dHBvcyhGSUxFICpyZXN0cmljdCAiIHN0cmVhbSAiLCBmcG9zX3QgKnJlc3RyaWN0ICIgcG9zICk7
CiAuQkkgImludCBmc2V0cG9zKEZJTEUgKiIgc3RyZWFtICIsIGNvbnN0IGZwb3NfdCAqIiBwb3Mg
KTsKIC5maQorLlBQCisuUlMgLTQKK0ZlYXR1cmUgVGVzdCBNYWNybyBSZXF1aXJlbWVudHMgZm9y
IGdsaWJjIChzZWUKKy5CUiBmZWF0dXJlX3Rlc3RfbWFjcm9zICg3KSk6CisuUkUKKy5QUAorLkJS
IGZzZWVrbyAoKSwKKy5CUiBmdGVsbG8gKCk6CisubmYKKyAgICBfRklMRV9PRkZTRVRfQklUUyA9
PSA2NCB8fCBfUE9TSVhfQ19TT1VSQ0UgPj0gMjAwMTEyTAorLmZpCiAuU0ggREVTQ1JJUFRJT04K
IFRoZQogLkJSIGZzZWVrICgpCkBAIC02Miw2ICs4MiwzNCBAQCBzdHJlYW0gcG9pbnRlZCB0byBi
eQogLklSIHN0cmVhbSAuCiAuUFAKIFRoZQorLkJSIGZzZWVrbyAoKQorZW5kCisuQlIgZnRlbGxv
ICgpCitmdW5jdGlvbnMgYXJlIHNpbWlsYXIsIGV4Y2VwdCB0aGF0IHRoZQorLkkgb2Zmc2V0Cith
cmd1bWVudCBvZgorLkJSIGZzZWVrbyAoKQorYW5kIHRoZSByZXR1cm4gdmFsdWUgb2YKKy5CUiBm
dGVsbG8gKCkKK2lzIG9mIHR5cGUKKy5JIG9mZl90CitpbnN0ZWFkIG9mCisuSVIgbG9uZyAuCisu
UFAKK09uIHNvbWUgYXJjaGl0ZWN0dXJlcywgYm90aAorLkkgb2ZmX3QKK2FuZAorLkkgbG9uZwor
YXJlIDMyLWJpdCB0eXBlcywgYnV0IGRlZmluaW5nCisuQiBfRklMRV9PRkZTRVRfQklUUword2l0
aCB0aGUgdmFsdWUgNjQgKGJlZm9yZSBpbmNsdWRpbmcKKy5JIGFueQoraGVhZGVyIGZpbGVzKQor
d2lsbCB0dXJuCisuSSBvZmZfdAoraW50byBhIDY0LWJpdCB0eXBlLgorLlBQCitUaGUKIC5CUiBy
ZXdpbmQgKCkKIGZ1bmN0aW9uIHNldHMgdGhlIGZpbGUgcG9zaXRpb24gaW5kaWNhdG9yIGZvciB0
aGUgc3RyZWFtIHBvaW50ZWQgdG8gYnkKIC5JIHN0cmVhbQpAQCAtMTA5LDExICsxNTcsMTQgQEAg
ZnVuY3Rpb24gcmV0dXJucyBubyB2YWx1ZS4KIFVwb24gc3VjY2Vzc2Z1bCBjb21wbGV0aW9uLAog
LkJSIGZnZXRwb3MgKCksCiAuQlIgZnNlZWsgKCksCisuQlIgZnNlZWtvICgpLAogLkJSIGZzZXRw
b3MgKCkKIHJldHVybiAwLAogYW5kCiAuQlIgZnRlbGwgKCkKLXJldHVybnMgdGhlIGN1cnJlbnQg
b2Zmc2V0LgorYW5kCisuQlIgZnRlbGxvICgpCityZXR1cm4gdGhlIGN1cnJlbnQgb2Zmc2V0Lgog
T3RoZXJ3aXNlLCBcLTEgaXMgcmV0dXJuZWQgYW5kCiAuSSBlcnJubwogaXMgc2V0IHRvIGluZGlj
YXRlIHRoZSBlcnJvci4KQEAgLTEyNCw2ICsxNzUsOCBAQCBUaGUKIC5JIHdoZW5jZQogYXJndW1l
bnQgdG8KIC5CUiBmc2VlayAoKQorb3IKKy5CUiBmc2Vla28gKCkKIHdhcyBub3QKIC5CUiBTRUVL
X1NFVCAsCiAuQlIgU0VFS19FTkQgLApAQCAtMTM5LDkgKzE5MiwxMSBAQCBpcyBub3Qgc2Vla2Fi
bGUgKGUuZy4sIGl0IHJlZmVycyB0byBhIHBpcGUsIEZJRk8sIG9yIHNvY2tldCkuCiBUaGUgZnVu
Y3Rpb25zCiAuQlIgZmdldHBvcyAoKSwKIC5CUiBmc2VlayAoKSwKKy5CUiBmc2Vla28gKCksCiAu
QlIgZnNldHBvcyAoKSwKKy5CUiBmdGVsbCAoKSwKIGFuZAotLkJSIGZ0ZWxsICgpCisuQlIgZnRl
bGxvICgpCiBtYXkgYWxzbyBmYWlsIGFuZCBzZXQKIC5JIGVycm5vCiBmb3IgYW55IG9mIHRoZSBl
cnJvcnMgc3BlY2lmaWVkIGZvciB0aGUgcm91dGluZXMKQEAgLTE2MiwxNiArMjE3LDMwIEBAIFR7
CiAubmEKIC5uaAogLkJSIGZzZWVrICgpLAorLkJSIGZzZWVrbyAoKSwKIC5CUiBmdGVsbCAoKSwK
Ky5CUiBmdGVsbG8gKCksCiAuQlIgcmV3aW5kICgpLAogLkJSIGZnZXRwb3MgKCksCiAuQlIgZnNl
dHBvcyAoKQogVH0JVGhyZWFkIHNhZmV0eQlNVC1TYWZlCiAuVEUKIC5TSCBTVEFOREFSRFMKLUMx
MSwgUE9TSVguMS0yMDA4LgorUE9TSVguMS0yMDA4LgorRXZlcnl0aGluZyBleGNlcHQgZm9yCisu
QlIgZnNlZWtvICgpCithbmQKKy5CUiBmdGVsbG8gKCkKK2lzIGFsc28gQzExLgogLlNIIEhJU1RP
UlkKIFBPU0lYLjEtMjAwMSwgQzg5LgorLlNIIE5PVEVTCitUaGUgZGVjbGFyYXRpb25zIG9mCisu
QlIgZnNlZWtvICgpCithbmQKKy5CUiBmdGVsbG8gKCkKK2NhbiBhbHNvIGJlIG9idGFpbmVkIGJ5
IGRlZmluaW5nIHRoZSBvYnNvbGV0ZQorLkIgX0xBUkdFRklMRV9TT1VSQ0UKK2ZlYXR1cmUgdGVz
dCBtYWNyby4KIC5TSCBTRUUgQUxTTwotLkJSIGxzZWVrICgyKSwKLS5CUiBmc2Vla28gKDMpCisu
QlIgbHNlZWsgKDIpLgpkaWZmIC0tZ2l0IGEvbWFuMy9mc2Vla28uMyBiL21hbjMvZnNlZWtvLjMK
aW5kZXggYjMzNjFkMjEwLi5hMTQ4N2I1YTggMTAwNjQ0Ci0tLSBhL21hbjMvZnNlZWtvLjMKKysr
IGIvbWFuMy9mc2Vla28uMwpAQCAtMSwxMDIgKzEgQEAKLSdcIiB0Ci0uXCIgQ29weXJpZ2h0IDIw
MDEgQW5kcmllcyBCcm91d2VyIDxhZWJAY3dpLm5sPi4KLS5cIgotLlwiIFNQRFgtTGljZW5zZS1J
ZGVudGlmaWVyOiBMaW51eC1tYW4tcGFnZXMtY29weWxlZnQKLS5cIgotLlRIIGZzZWVrbyAzIChk
YXRlKSAiTGludXggbWFuLXBhZ2VzICh1bnJlbGVhc2VkKSIKLS5TSCBOQU1FCi1mc2Vla28sIGZ0
ZWxsbyBcLSBzZWVrIHRvIG9yIHJlcG9ydCBmaWxlIHBvc2l0aW9uCi0uU0ggTElCUkFSWQotU3Rh
bmRhcmQgQyBsaWJyYXJ5Ci0uUkkgKCBsaWJjICIsICIgXC1sYyApCi0uU0ggU1lOT1BTSVMKLS5u
ZgotLkIgI2luY2x1ZGUgPHN0ZGlvLmg+Ci0uUFAKLS5CSSAiaW50IGZzZWVrbyhGSUxFICoiIHN0
cmVhbSAiLCBvZmZfdCAiIG9mZnNldCAiLCBpbnQgIiB3aGVuY2UgKTsKLS5CSSAib2ZmX3QgZnRl
bGxvKEZJTEUgKiIgc3RyZWFtICk7Ci0uZmkKLS5QUAotLlJTIC00Ci1GZWF0dXJlIFRlc3QgTWFj
cm8gUmVxdWlyZW1lbnRzIGZvciBnbGliYyAoc2VlCi0uQlIgZmVhdHVyZV90ZXN0X21hY3JvcyAo
NykpOgotLlJFCi0uUFAKLS5CUiBmc2Vla28gKCksCi0uQlIgZnRlbGxvICgpOgotLm5mCi0gICAg
X0ZJTEVfT0ZGU0VUX0JJVFMgPT0gNjQgfHwgX1BPU0lYX0NfU09VUkNFID49IDIwMDExMkwKLS5m
aQotLlNIIERFU0NSSVBUSU9OCi1UaGUKLS5CUiBmc2Vla28gKCkKLWFuZAotLkJSIGZ0ZWxsbyAo
KQotZnVuY3Rpb25zIGFyZSBpZGVudGljYWwgdG8KLS5CUiBmc2VlayAoMykKLWFuZAotLkJSIGZ0
ZWxsICgzKQotKHNlZQotLkJSIGZzZWVrICgzKSksCi1yZXNwZWN0aXZlbHksIGV4Y2VwdCB0aGF0
IHRoZQotLkkgb2Zmc2V0Ci1hcmd1bWVudCBvZgotLkJSIGZzZWVrbyAoKQotYW5kIHRoZSByZXR1
cm4gdmFsdWUgb2YKLS5CUiBmdGVsbG8gKCkKLWlzIG9mIHR5cGUKLS5JIG9mZl90Ci1pbnN0ZWFk
IG9mCi0uSVIgbG9uZyAuCi0uUFAKLU9uIHNvbWUgYXJjaGl0ZWN0dXJlcywgYm90aAotLkkgb2Zm
X3QKLWFuZAotLkkgbG9uZwotYXJlIDMyLWJpdCB0eXBlcywgYnV0IGRlZmluaW5nCi0uQiBfRklM
RV9PRkZTRVRfQklUUwotd2l0aCB0aGUgdmFsdWUgNjQgKGJlZm9yZSBpbmNsdWRpbmcKLS5JIGFu
eQotaGVhZGVyIGZpbGVzKQotd2lsbCB0dXJuCi0uSSBvZmZfdAotaW50byBhIDY0LWJpdCB0eXBl
LgotLlNIIFJFVFVSTiBWQUxVRQotT24gc3VjY2Vzc2Z1bCBjb21wbGV0aW9uLAotLkJSIGZzZWVr
byAoKQotcmV0dXJucyAwLCB3aGlsZQotLkJSIGZ0ZWxsbyAoKQotcmV0dXJucyB0aGUgY3VycmVu
dCBvZmZzZXQuCi1PdGhlcndpc2UsIFwtMSBpcyByZXR1cm5lZCBhbmQKLS5JIGVycm5vCi1pcyBz
ZXQgdG8gaW5kaWNhdGUgdGhlIGVycm9yLgotLlNIIEVSUk9SUwotU2VlIHRoZSBFUlJPUlMgaW4K
LS5CUiBmc2VlayAoMykuCi0uU0ggQVRUUklCVVRFUwotRm9yIGFuIGV4cGxhbmF0aW9uIG9mIHRo
ZSB0ZXJtcyB1c2VkIGluIHRoaXMgc2VjdGlvbiwgc2VlCi0uQlIgYXR0cmlidXRlcyAoNykuCi0u
VFMKLWFsbGJveDsKLWxieCBsYiBsYgotbCBsIGwuCi1JbnRlcmZhY2UJQXR0cmlidXRlCVZhbHVl
Ci1UewotLm5hCi0ubmgKLS5CUiBmc2Vla28gKCksCi0uQlIgZnRlbGxvICgpCi1UfQlUaHJlYWQg
c2FmZXR5CU1ULVNhZmUKLS5URQotLlNIIFNUQU5EQVJEUwotUE9TSVguMS0yMDA4LgotLlNIIEhJ
U1RPUlkKLWdsaWJjIDIuMS4KLVBPU0lYLjEtMjAwMSwgU1VTdjIuCi0uU0ggTk9URVMKLVRoZSBk
ZWNsYXJhdGlvbnMgb2YgdGhlc2UgZnVuY3Rpb25zIGNhbiBhbHNvIGJlIG9idGFpbmVkIGJ5IGRl
ZmluaW5nCi10aGUgb2Jzb2xldGUKLS5CIF9MQVJHRUZJTEVfU09VUkNFCi1mZWF0dXJlIHRlc3Qg
bWFjcm8uCi0uU0ggU0VFIEFMU08KLS5CUiBmc2VlayAoMykKKy5zbyBtYW4zL2ZzZWVrLjMKZGlm
ZiAtLWdpdCBhL21hbjMvZnRlbGxvLjMgYi9tYW4zL2Z0ZWxsby4zCmluZGV4IGQ1NjI4ZjQ2ZC4u
YTE0ODdiNWE4IDEwMDY0NAotLS0gYS9tYW4zL2Z0ZWxsby4zCisrKyBiL21hbjMvZnRlbGxvLjMK
QEAgLTEgKzEgQEAKLS5zbyBtYW4zL2ZzZWVrby4zCisuc28gbWFuMy9mc2Vlay4zCi0tIAoyLjQy
LjAuNTE1LmczODBmYzdjY2QxLWdvb2cKCg==
--00000000000035d0660606396a8d--
