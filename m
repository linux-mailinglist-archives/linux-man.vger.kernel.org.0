Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 883C67D492B
	for <lists+linux-man@lfdr.de>; Tue, 24 Oct 2023 09:59:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232076AbjJXH73 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 24 Oct 2023 03:59:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50082 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232004AbjJXH72 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 24 Oct 2023 03:59:28 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0EE2F9
        for <linux-man@vger.kernel.org>; Tue, 24 Oct 2023 00:59:25 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-9ae2cc4d17eso627934666b.1
        for <linux-man@vger.kernel.org>; Tue, 24 Oct 2023 00:59:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698134364; x=1698739164; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Vgfpjn9+P5QTj3EqVZgHA97Pgz+cByePt9ZmJ1uk1uQ=;
        b=N2kirZ0ukv6eb7gkaCkEiQ5WwgCBwh53ZCoo5wC1dHEK4tRHAujJaNF6Hk3MQNRYMb
         RezNtQ36U5QDiIHUUaS0V+J9VyGr5umfDPYV4hr5U/cS7hbZtFHgyAAP6XSdRloJB5i2
         8P+DXu5NWrCIvKKg7571OXua9q0VOEmu7x6Fk/Zt7Vn6V9LhuEUCk2CjP0ftzaigrOke
         Om1AVhsUu20y87oR6ctZ4IvLF5MXkyjqGihvhCwc0v9P3Z1QRg04K+TIJV50ODDBfIQp
         uik3jTN250kgflx7rIbBuTMkgs2UTcjmam86qq1axrf8N2HgUsp7LGvl7rcYhq+2bwAI
         DbKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698134364; x=1698739164;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Vgfpjn9+P5QTj3EqVZgHA97Pgz+cByePt9ZmJ1uk1uQ=;
        b=Cekn0JmDS+xfdI9xfO8s+yybYq9QO0iTCZUUwSlQRIa988hXQvAnGfvXy/80aXXRDq
         fGcejVArH/x3oyafs51ceh0f4bwKJzyomKoQUvpOG3wIcQEhiZnqgmuhpSDgjW1HN0e5
         htItaeGWcFjM3Dfso/6+cXSEcr+D1srldUpvr1RzIZrDGynGqg0rv1UK7bloodBprdf8
         lSFKbItJg5MKVij7P9xyo3hvJbkYneKMQppq9l4VTaxiXgUcGNFYid+XlvE9zQkz0F+C
         ZGwK8qRLOuKi07MG8p7mHqi/6w2DU8ZhhNbDEwCWGRwmNYtNGCrhTCwBi2YhZCR66hkr
         U07w==
X-Gm-Message-State: AOJu0YwiyYdi2O2HVwR50c78ZWObY/Bl3TUbLA3H9gi/a6YAAMKxvgfY
        6MMtT0Cd9PYpeBlBiYskL0BPpQrNVtsQrkw5CpEKtLTX
X-Google-Smtp-Source: AGHT+IFJA1+Iyt1rA/VBmSUOgqHr1DgW/9VMEeMPvBLk/ZTDK0uminKLliqwEcXK1gsiNx4O00Gr00FDfUQWEMr/bk0=
X-Received: by 2002:a17:907:720f:b0:9c4:4b20:44a4 with SMTP id
 dr15-20020a170907720f00b009c44b2044a4mr8694754ejc.48.1698134363789; Tue, 24
 Oct 2023 00:59:23 -0700 (PDT)
MIME-Version: 1.0
References: <20231019172315.208972-1-adhemerval.zanella@linaro.org>
 <CACKs7VBtQNA-j=HapaBcM47gRE72jaBBU+c59G4Xx3WimPRFsg@mail.gmail.com> <d66f16b9-c65f-4fe5-9b86-05373a52561d@linaro.org>
In-Reply-To: <d66f16b9-c65f-4fe5-9b86-05373a52561d@linaro.org>
From:   Stefan Puiu <stefan.puiu@gmail.com>
Date:   Tue, 24 Oct 2023 10:59:12 +0300
Message-ID: <CACKs7VBdNpWL6-GsECk46s7rK+aDiSr5BjROFL-T_Mh2AvPQ9Q@mail.gmail.com>
Subject: Re: [PATCH v3] ld.so.8: Describe glibc Hardware capabilities
To:     Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>
Cc:     linux-man@vger.kernel.org, alx@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Adhemerval,

On Fri, Oct 20, 2023 at 8:50=E2=80=AFPM Adhemerval Zanella Netto
<adhemerval.zanella@linaro.org> wrote:
>
>
>
> On 19/10/23 16:10, Stefan Puiu wrote:
> > Hi and sorry to jump in so late in the discussion,
>
> Thanks for the review!

Well, I'm glad to nitpi... um, help :).

>
> >
> > On Thu, Oct 19, 2023 at 8:23=E2=80=AFPM Adhemerval Zanella
> > <adhemerval.zanella@linaro.org> wrote:
> >>
> >> It was added on glibc 2.33 as a way to improve path search, since
> >> legacy hardware capabilities combination scheme do not scale
> >> properly with new hardware support.  The legacy support was removed
> >> on glibc 2.37, so it is the only scheme currently supported.
> >
> > I would suggest (caveat: non-native English speaker here):
> >
> > s/It was added on glibc/The feature was added in glibc/
> > s/improve path search/improve the path search/
> > s/since legacy/since the legacy/
> > s/hardware capabilities combination scheme do not/hardware
> > capabilities scheme does not/
> > s/was removed on glibc/was removed in glibc/
>
> Ack.
>
> >
> >>
> >> Signed-off-by: Adhemerval Zanella <adhemerval.zanella@linaro.org>
> >> ---
> >>  man8/ld.so.8 | 48 +++++++++++++++++++++++++++++++++++++++++++++++-
> >>  1 file changed, 47 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/man8/ld.so.8 b/man8/ld.so.8
> >> index cf03cb85e..5b02ae88f 100644
> >> --- a/man8/ld.so.8
> >> +++ b/man8/ld.so.8
> >> @@ -208,6 +208,14 @@ The objects in
> >>  .I list
> >>  are delimited by colons.
> >>  .TP
> >> +.BI \-\-glibc-hwcaps-mask " list"
> >> +only search built-in subdirectories if in
> >> +.IR list .
> >> +.TP
> >> +.BI \-\-glibc-hwcaps-prepend " list"
> >> +Search glibc-hwcaps subdirectories in
> >> +.IR list .
> >> +.TP
> >>  .B \-\-inhibit\-cache
> >>  Do not use
> >>  .IR /etc/ld.so.cache .
> >> @@ -808,7 +816,7 @@ as a temporary workaround to a library misconfigur=
ation issue.)
> >>  .I lib*.so*
> >>  shared objects
> >>  .SH NOTES
> >> -.SS Hardware capabilities
> >> +.SS Legacy Hardware capabilities (from glibc 2.5 to glibc 2.37)
> >>  Some shared objects are compiled using hardware-specific instructions=
 which do
> >>  not exist on every CPU.
> >>  Such objects should be installed in directories whose names define th=
e
> >> @@ -843,6 +851,44 @@ z900, z990, z9-109, z10, zarch
> >>  .B x86 (32-bit only)
> >>  acpi, apic, clflush, cmov, cx8, dts, fxsr, ht, i386, i486, i586, i686=
, mca, mmx,
> >>  mtrr, pat, pbe, pge, pn, pse36, sep, ss, sse, sse2, tm
> >> +.SS glibc Hardware capabilities (from glibc 2.33)
> >> +The legacy hardware capabilities combinations has the drawback where
> >> +each feature name incur in
> >> +cascading extra paths added on the search path list,
> >
> > IMO, this part could use some rephrasing. How about:
> > The legacy hardware capabilities support has the drawback that each
> > feature grows the number of paths added to the search list.
>
> The main problem was it did not only grows, but it did quadratically sinc=
e
> the new capability is combined with the others.  It was minimized because
> the actually used capabilities was filtered out by the processor/kernel
> advertise features. So maybe:
>
>   The legacy hardware capabilities support has the drawback
>   it requires multiple search paths due the combined supported capabiliti=
es,
>   and each new feature grows the number of paths added to the search list
>   in quadratic manner.

Maybe:
The legacy hardware capabilities support has the drawback that each
new feature added grows the search path exponentially, because it has
to be added to every combination of the other existing features.

And then you have the sse2 example below, which I think clarifies the
point very well.

>
> >
> > Also, maybe this would better fit under the legacy capabilities section=
?
>
> Indeed, I will move to there.
>
> >
> >> +adding a lot of overhead on
> > I think "adding a lot of overhead to" sounds better here. "Adding to"
> > instead of "adding on".
> >
> >> +.B ld.so
> >> +during library resolution.
> >> +For instance, on x86 32-bit, if the hardware
> >> +supports
> >> +.B i686
> >> +and
> >> +.BR sse2
> >> +, the resulting search path will be
> >> +.BR i686/sse2:i686:sse2:. .
> >> +A new capability
> >> +.B newcap
> >> +will set the search path to
> >> +.BR newcap/i686/sse2:newcap/i686:newcap/sse2:newcap:i686/sse2:i686:ss=
e2: .
> >> +.PP
> >> +glibc 2.33 added a new hardware capability scheme,
> >> +where each ABI can define
> >
> > Maybe s/each ABI/each ABI version/? I'm not familiar with the feature,
> > just guessing from the examples below; they were very helpful, IMO.
>
> I think it would be better to use 'architecture' here.

Maybe 'architecture level' could work, based on Florian's mail to
llvm-dev? Architecture is too broad, I think, and Florian says that
the levels don't correspond to micro-architectures, since in the
x84-64 the progression is not so clear.

Anyway, the links were very helpful. Maybe you can leave a pointer to
them somewhere, at least in the change description?

>
>
> >
> >> +a set of paths based on expected hardware support.
> >
> > a set of paths where to find the expected hardware support?
> >
> > This is based on how I (mis)understood the feature, though, if that's
> > wrong, then the above might also be wrong. I guess the x86-64 glibc
> > would install the x86-64-v2, -v3 and -v4 directories on disk; when
> > running a program, glibc can then check what the current CPU supports
> > - say if it supports x86-64-v3, it loads the contents of that folder?
>
> They are search paths, so glibc itself does not install them.  The
> glibc Hardware capabilities search paths are constructed based on
> pre-defined list (where only a handful architecture actually define
> them) that are matched against the supported one by the hardware.
> The initial patchset that actually implemented this feature has
> more details [1].

By "glibc installs them", I meant that I would expect them to be part
of glibc, is that not the case?

>
> It has the advantage that each glibc-hwcap path are not combined
> with each other, so there is no quadratic increase when a new
> patch is added.
>
> So, let's say you have a x86_64-v3 chip (Haswell or Excavator) [2].
> The result search patch will be
>
>   glibc-hwcaps/x86-64-v3:glibc-hwcaps/x86-64-v2:
>
> It is also supported by ldconfig, so it will also check on all paths
> defined on ld.so.conf along with combined one with glibc-hwcap.  So
> let's say you have "/lib/x86_64-linux-gnu" on ld.so.conf, ldconfig will
> check all possible subpaths based on the glibc-hwcap list:
>
>   /lib/x86_64-linux-gnu/glibc-hwcaps/x86-64-v4
>   /lib/x86_64-linux-gnu/glibc-hwcaps/x86-64-v3
>   /lib/x86_64-linux-gnu/glibc-hwcaps/x86-64-v2
>   /lib/x86_64-linux-gnu/
>
> And only adds a possible candidate iff the file exists.  For instance
> if you have:
>
>   /lib/x86_64-linux-gnu/glibc-hwcaps/x86-64-v4/libsomething.so
>   /lib/x86_64-linux-gnu/glibc-hwcaps/x86-64-v2/libsomething.so
>   /lib/x86_64-linux-gnu/libsomething.so
>
> The ldconfig will setup a ld.so.cache with all the entries, but
> ld.so will only select the x86-64-v4/libsomething.so if the CPU supports
> the x86-64-v4 (Skylake, Zen4); otherwise it will fallback to
> x86-64-v2/libsomething.so if the cpu support x86_64-v2 (Nehalem, Jaguar),
> or libsomething.so as the x86_64 baseline.

Thanks, that makes it much clearer.

>
> So maybe a better description would be
>
>   glibc 2.33 added a new hardware capability scheme,
>   where each architecture might define
>   a set of paths based on expected hardware support.
>   Each path is added on the search path list
>   depending of the hardware of the machine.
>   Each path is independent and not combined together,
>   so it does have the drawbacks of legacy scheme.

How about:
glibc 2.33 added a new hardware capability scheme, where under each
CPU architecture, certain levels can be defined, grouping support for
certain features or special instructions. Each architecture level has
a fixed set of paths that it adds to the dynamic linker search list,
depending on the hardware of the machine. Since each new architecture
level is not combined with previously existing ones, the new scheme
does not have the drawback of growing the dynamic linker search list
uncontrollably.

>   .PP
>   For instance, on x86 64-bit, if the hardware supports
>   .B x86_64-v3
>   (for instance Intel Haswell or AMD Excavator)
>   , the resulting search path will be
>   .BR glibc-hwcaps/x86-64-v3:glibc-hwcaps/x86-64-v2:.

I think it would be useful if the existing levels are defined
somewhere; maybe Alex can suggest the proper manpage.

Regards,
Stefan.

>   The following paths are currently supported, in priority order.
>   .TP
>   .B PowerPC (64-bit little-endian only)
>   power10, power9
>   .TP
>   .B s390 (64-bit only)
>   z16, z15, z14, z13
>   .TP
>   .B x86 (64-bit only)
>   x86-64-v4, x86-64-v3, x86-64-v2
>   .PP
>   glibc 2.37 removed support for the legacy hardware capabilities.
>
> >
> >> +Each path is added depending of the hardware of the machine,
> >> +and they are not combined together.
> >> +They also have priority over the legacy hardware capabilities.
> >> +The following paths are currently supported.
> >> +.TP
> >> +.B PowerPC (64-bit little-endian only)
> >> +power9, power10
> >> +.TP
> >> +.B s390 (64-bit only)
> >> +z13, z14, z15, z16
> >> +.TP
> >> +.B x86 (64-bit only)
> >> +x86-64-v2, x86-64-v3, x86-64-v4
> >> +.PP
> >> +The glibc 2.37 removed support for the legacy hardware capabilities.
> > s/The glibc/glibc
> >
> > Regards,
> > Stefan.
> >
> >> +.
> >>  .SH SEE ALSO
> >>  .BR ld (1),
> >>  .BR ldd (1),
> >> --
> >> 2.34.1
> >>
>
> [1] https://sourceware.org/pipermail/libc-alpha/2020-June/115250.html
> [2] https://lists.llvm.org/pipermail/llvm-dev/2020-July/143289.html
