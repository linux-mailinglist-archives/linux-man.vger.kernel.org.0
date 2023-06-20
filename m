Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CCA6A737405
	for <lists+linux-man@lfdr.de>; Tue, 20 Jun 2023 20:22:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229702AbjFTSWD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 20 Jun 2023 14:22:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54846 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230132AbjFTSVs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 20 Jun 2023 14:21:48 -0400
Received: from mail-qt1-x82d.google.com (mail-qt1-x82d.google.com [IPv6:2607:f8b0:4864:20::82d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 364FA1A7
        for <linux-man@vger.kernel.org>; Tue, 20 Jun 2023 11:21:47 -0700 (PDT)
Received: by mail-qt1-x82d.google.com with SMTP id d75a77b69052e-3f9d619103dso670221cf.1
        for <linux-man@vger.kernel.org>; Tue, 20 Jun 2023 11:21:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20221208; t=1687285306; x=1689877306;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=MtzYUeww4+Nx4h8qGOKEFA+JCLUmt0HMtFjAvpABpnY=;
        b=3cCQjK0aygl2JZkRv+LxACIlUEGMOZ7z7ODbGanfj1Nkzg0H7gUad6v6AoD+jeJ+Bi
         S2OulMjT0Pqjjo9kqUYGvA4gDgRqqerXjo58kdqrRcWkCZ+mgXJp+aOjovxoXO+stSJG
         QR3fMYqOOXvA4Sbcm/Cb0pMNKFjqX4fk9CH5H8pZI53XsRb9tPjRlyLU04Bu0FTl0nAN
         WqSyAx/7I8zcMvTDzK2gQ8R1hueuahlZum1fZCjM6wZdY2YEPsYMUmnpe/lFYOE7KeY4
         VoD0KXItON6qsmZOT3RDsmaeCYf6x3sx8N97x4im6cBys3mJE5BXZ6qVCnFOBnV5jbo5
         ZjwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687285306; x=1689877306;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MtzYUeww4+Nx4h8qGOKEFA+JCLUmt0HMtFjAvpABpnY=;
        b=NYEgHUoucz+y1AOJGutWRIGUsqkfahmQ4ak4i4+NpWgsNatNyrNXJzNpCaYwstyGUk
         Ufzj6bFY1reqBGjRecPP/eaQrkCqCatEXwTMJVJg+Hfk8yeEn/wxsSahDJwKz/5TrqGA
         yDZjB1Rn6k7IksG1NfGDACoP8sH4BzLl75Cg3UCFrMsWSNeN677Idm5PCM2uGzeV/DiX
         915j+aQJVJPiaH7Qf99ctFJPyxWjtBy6hRwPA8wekMq8QWCFNr5aBfbNQzUUHmG+MBe9
         2Hsjb56S37MJAuISf75Hbnqqg9rBPCMCslC5T9OYGMQz1cgaXDHhLBeJbEebdEHxvQil
         15Gg==
X-Gm-Message-State: AC+VfDxKBKnKfCtEX/r/UpCgzOSycmezY0g8jH+jVy0Lz9WbIUbpATHQ
        TikFnRuLY7UBz5eCu6D74gvy0RDXiNKBhPvVUxbtlqk+UsD/kep7yhY=
X-Google-Smtp-Source: ACHHUZ5+uy7UYLAFQI7se//4qdCbD56oJ+1DTgSlwerQ/a+fhgu/G+iacIuio+ZSsm2HbSdLLcKzYpd3m7WwPDGNq3w=
X-Received: by 2002:ac8:5989:0:b0:3e8:684b:195d with SMTP id
 e9-20020ac85989000000b003e8684b195dmr143459qte.10.1687285306137; Tue, 20 Jun
 2023 11:21:46 -0700 (PDT)
MIME-Version: 1.0
References: <CAELULbeXgZWn+Nw_rpUzkGgNCtb7oFf1+JS=KnNVuLhcF5Vabg@mail.gmail.com>
 <CAELULbf=z2WWpHm5QDTK81oWTC9zMZJg2MA69mjOorJQ5QAzGw@mail.gmail.com>
 <CAJgzZopuptYOKHQ32-mau9gzwaWOmRtTACqdmfZvox=c2itp7w@mail.gmail.com>
 <781c88a1-b71f-f600-8d75-068a65855d16@gmail.com> <CAJgzZooLH5UnNU_j6jTkTFMCS+7gDMaTu9RYpSHnO2ELJat-+A@mail.gmail.com>
 <41ea7196-c824-196d-7794-0f61d0947bcd@gmail.com>
In-Reply-To: <41ea7196-c824-196d-7794-0f61d0947bcd@gmail.com>
From:   Zijun Zhao <zijunzhao@google.com>
Date:   Tue, 20 Jun 2023 11:21:34 -0700
Message-ID: <CAELULbeirvj+Gmpi-+tq=SYu2wUXec-46-d2_EK++34L+C4qGQ@mail.gmail.com>
Subject: Re: [PATCH] Fix the man page
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     enh <enh@google.com>, alx@kernel.org, linux-man@vger.kernel.org
Content-Type: multipart/mixed; boundary="0000000000004f730b05fe93b957"
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED,USER_IN_DEF_DKIM_WL,
        USER_IN_DEF_SPF_WL autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--0000000000004f730b05fe93b957
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Alejandro,
  I already created the patch attached below. How to add it to this
page? Do I need to use git push, or just provide the patch? Could you
help put it in .SH VERSIONS? Thank you!
Best,
Zijun Zhao

On Fri, May 19, 2023 at 3:42=E2=80=AFPM Alejandro Colomar
<alx.manpages@gmail.com> wrote:
>
> On 5/20/23 00:21, enh wrote:
> > On Fri, May 19, 2023 at 1:03=E2=80=AFAM Alejandro Colomar
> > <alx.manpages@gmail.com> wrote:
> [...]
>
> >> You'll also need to add _Nullable to the function prototypes in the
> >> SYNOPSIS.
> >
> > heh, funnily enough, zijunzhao's adding exactly those annotations to
> > the bionic headers, which is how we stumbled across this.
>
> :)
>
> >
> >> BTW, I see that glibc still requires nonnull in gettimeofday(3).  It's
> >> only settimeofday(3) that is nullable.
> >
> > yeah, but the _kernel_ allows null in both (see kernel/time/time.c),
> > and this is section 2 of the man page. it's unclear to me whether
> > that's worth calling out up here, or should be down in the
> > Linux-specific section? (this page seems to be written as if it cares
> > about Hurd? "On a non-Linux kernel, with glibc ...".)
>
> Yes, we care about hurd, and non-g libc, in this page and others.
> Normally, I would be cautious, and specify the strictest prototype of
> all implementations about which I care, but in this case, glibc seems
> unnecessarily restrictive, and I'm ready to add _Nullable if the kernel
> and some libc support that.  However, as a caution, please add a
> (CAVEATS?) section documenting that glibc doesn't allow NULL there.
> Or maybe keep the SYNOPSIS without _Nullable, and have some VERSIONS
> section specifying that other libcs and the kernel support NULL.
>
> >
> >> See:
> >>
> >>
> >> $ grepc gettimeofday /usr/include/*/sys/time.h
> >> /usr/include/x86_64-linux-gnu/sys/time.h:67:
> >> extern int gettimeofday (struct timeval *__restrict __tv,
> >>                          void *__restrict __tz) __THROW __nonnull ((1)=
);
> >>
> >>
> >> /usr/include/x86_64-linux-gnu/sys/time.h:75:
> >> #  define gettimeofday __gettimeofday64
> >>
> >>
> >> $ grepc settimeofday /usr/include/*/sys/time.h
> >> /usr/include/x86_64-linux-gnu/sys/time.h:86:
> >> extern int settimeofday (const struct timeval *__tv,
> >>                          const struct timezone *__tz)
> >>       __THROW;
> >>
> >>
> >> /usr/include/x86_64-linux-gnu/sys/time.h:106:
> >> #   define settimeofday __settimeofday64
> >>
> >>
> >> And while NULL may be non-UB, the manual page is not very clear on why
> >> someone would want to call these functions with NULL.  Could you
> >> please also explain why would someone want to call these functions
> >> with NULL?  (Let's discuss it in the list, and then we see what
> >> wording we use for the page.)
> >
> > so there are definitely several orders of magnitude more users of a
> > null timezone --- most callers don't want that (not least because
> > glibc seems to not fill it out anyway? musl certainly doesn't,
> > implementing gettimeofday() in terms of clock_gettime() instead).
> >
> > the users for a null time (and non-null timezone; i haven't seen
> > anyone -- not even a test -- pass null for both!) are interesting.
> > Android's init uses settimeofday() with only a timezone, but --
> > although the timezone to use is settable in device-specific init
> > scripts -- for devices in our tree, that's actually always 0. there's
> > other proprietary (non-Google) code that uses gettimeofday() with only
> > a timezone, and i'm honestly not sure whether it's deliberate that
> > it's asking the _kernel_ for the timezone or not (i'm guessing they
> > want the device timezone rather than the app timezone, but i do not
> > believe there are devices where the _kernel_ timezone matches the
> > device timezone?). certainly both of these use cases seem worth
> > following up on, and i will do.
>
> Please.  And thanks for the details!
>
> >
> > but looking at musl (which ignores tz in both cases) it seems like the
> > most impactful change would be to fix "The functions gettimeofday()
> > and settimeofday() can get and set the time as well as a timezone" :-)
>
> :-)
>
> Makes sense; although it would be worth being clear about if that's
> really true, and if libcs do support that as well as the kernel.
>
> >
> > it also seems like an improvement to really call out the libc/kernel
> > differences more clearly though.
>
> Sure.  Many pages have a dedicated subsection.  Feel free to add it
> to this page.  I'd put it in .SH VERSIONS.
>
> $ grep -rn 'C library/kernel differences' man*
> man2/sigprocmask.2:120:.SS C library/kernel differences
> man2/setreuid.2:168:.SS C library/kernel differences
> man2/brk.2:126:.SS C library/kernel differences
> man2/sigwaitinfo.2:114:.SS C library/kernel differences
> man2/gethostname.2:122:.SS C library/kernel differences
> man2/getcpu.2:73:.SS C library/kernel differences
> man2/fork.2:263:.SS C library/kernel differences
> man2/epoll_wait.2:258:.SS C library/kernel differences
> man2/wait4.2:157:.SS C library/kernel differences
> man2/stat.2:355:.SS C library/kernel differences
> man2/sigsuspend.2:74:.SS C library/kernel differences
> man2/access.2:40:                /* But see C library/kernel differences,=
 below */
> man2/access.2:285:.SS C library/kernel differences
> man2/clock_getres.2:354:.SS C library/kernel differences
> man2/getpid.2:57:.SS C library/kernel differences
> man2/setfsgid.2:57:.SS C library/kernel differences
> man2/getgroups.2:142:.SS C library/kernel differences
> man2/sigaction.2:946:.SS C library/kernel differences
> man2/setresuid.2:100:.SS C library/kernel differences
> man2/readv.2:290:.SS C library/kernel differences
> man2/readv.2:342:.SS Historical C library/kernel differences
> man2/open.2:1393:.SS C library/kernel differences
> man2/setgid.2:58:.SS C library/kernel differences
> man2/setfsuid.2:97:.SS C library/kernel differences
> man2/ptrace.2:2814:.SS C library/kernel differences
> man2/poll.2:382:.SS C library/kernel differences
> man2/sigreturn.2:130:.SS C library/kernel differences
> man2/eventfd.2:267:.SS C library/kernel differences
> man2/mmap.2:729:.SS C library/kernel differences
> man2/_exit.2:104:.SS C library/kernel differences
> man2/time.2:86:.SS C library/kernel differences
> man2/pread.2:101:.SS C library/kernel differences
> man2/seccomp.2:975:.IR "C library/kernel differences" .
> man2/setuid.2:104:.SS C library/kernel differences
> man2/sched_setaffinity.2:95:return 0 (but see "C library/kernel differenc=
es" below,
> man2/sched_setaffinity.2:220:.SS C library/kernel differences
> man2/select.2:559:.SS C library/kernel differences
> man2/sigpending.2:52:.SS C library/kernel differences
> man2/posix_fadvise.2:135:.SS C library/kernel differences
> man2/gettimeofday.2:173:.SS C library/kernel differences
> man2/uname.2:83:.SS C library/kernel differences
> man2/clone.2:1576:.SS C library/kernel differences
> man2/getpriority.2:185:.SS C library/kernel differences
> man2/signalfd.2:331:.SS C library/kernel differences
> man2/timer_create.2:225:.SS C library/kernel differences
> man2/wait.2:464:.SS C library/kernel differences
> man2/nice.2:80:.SS C library/kernel differences
> man2/chmod.2:303:.SS C library/kernel differences
> man2/seteuid.2:114:.SS C library/kernel differences
> man3/getcwd.3:217:.SS C library/kernel differences
> man3/killpg.3:98:.SS C library/kernel differences
> man3/mq_notify.3:174:.SS C library/kernel differences
> man3/mq_open.3:269:.SS C library/kernel differences
> man3/sigqueue.3:118:.SS C library/kernel differences
> man3type/epoll_event.3type:37:.SS C library/kernel differences
> man7/man-pages.7:402:.I "C library/kernel differences"
>
> Cheers,
> Alex
>
> >
> >> Thanks!
> >> Alex
> >>
> >> --
> >> <http://www.alejandro-colomar.es/>
> >> GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5
> >>
>
> --
> <http://www.alejandro-colomar.es/>
> GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--0000000000004f730b05fe93b957
Content-Type: application/x-patch; 
	name="0001-Modify-the-documentation-of-gettimeofday.patch"
Content-Disposition: attachment; 
	filename="0001-Modify-the-documentation-of-gettimeofday.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_lj4m2stk0>
X-Attachment-Id: f_lj4m2stk0

RnJvbSA0ZGY1YmQ3MTFlYzQyZGUzMDBjZmUxYzc4NTg5YzBlMWI0OGU3M2NiIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBaaWp1biBaaGFvIDx6aWp1bnpoYW9AZ29vZ2xlLmNvbT4KRGF0
ZTogTW9uLCA1IEp1biAyMDIzIDExOjQ1OjQ5IC0wNzAwClN1YmplY3Q6IFtQQVRDSF0gTW9kaWZ5
IHRoZSBkb2N1bWVudGF0aW9uIG9mIGdldHRpbWVvZmRheSgpCgpXZSBmaW5kIHR2IGFyZyBpcyBh
bGxvd2VkIHRvIGJlIG51bGwgaW4gYmlvbmljIHNvIG1ha2UgdGhlIGRvY3VtZW50YXRpb24gbW9y
ZSBjbGVhci4KLS0tCiBtYW4yL2dldHRpbWVvZmRheS4yIHwgMSArCiAxIGZpbGUgY2hhbmdlZCwg
MSBpbnNlcnRpb24oKykKCmRpZmYgLS1naXQgYS9tYW4yL2dldHRpbWVvZmRheS4yIGIvbWFuMi9n
ZXR0aW1lb2ZkYXkuMgppbmRleCA5ZDEzNGZhNDkuLjQzZjNmZDlmZiAxMDA2NDQKLS0tIGEvbWFu
Mi9nZXR0aW1lb2ZkYXkuMgorKysgYi9tYW4yL2dldHRpbWVvZmRheS4yCkBAIC0xNzUsNiArMTc1
LDcgQEAgT24gc29tZSBhcmNoaXRlY3R1cmVzLCBhbiBpbXBsZW1lbnRhdGlvbiBvZgogLkJSIGdl
dHRpbWVvZmRheSAoKQogaXMgcHJvdmlkZWQgaW4gdGhlCiAuQlIgdmRzbyAoNykuCitUaGUga2Vy
bmVsIGFjY2VwdHMgbnVsbCBmb3IgYm90aCB0aW1lIGFuZCB0aW1lem9uZS4gVGhlIHRpbWV6b25l
IGFyZ3VtZW50IGlzIGlnbm9yZWQgYnkgZ2xpYmMgYW5kIG11c2wsIGFuZCBub3QgcGFzc2VkIHRv
L2Zyb20gdGhlIGtlcm5lbC4gQW5kcm9pZCdzIGJpb25pYyBwYXNzZXMgdGhlIHRpbWV6b25lIGFy
Z3VtZW50IHRvL2Zyb20gdGhlIGtlcm5lbCwgYnV0IEFuZHJvaWQgZG9lcyBub3QgdXBkYXRlIHRo
ZSBrZXJuZWwgdGltZXpvbmUgYmFzZWQgb24gdGhlIGRldmljZSB0aW1lem9uZSBpbiBTZXR0aW5n
cywgc28gdGhlIGtlcm5lbCdzIHRpbWV6b25lIGlzIHR5cGljYWxseSBVVEMuCiAuU0ggU1RBTkRB
UkRTCiAuVFAKIC5CUiBnZXR0aW1lb2ZkYXkgKCkKLS0gCjIuNDEuMC5yYzAuMTcyLmczZjEzMmI3
MDcxLWdvb2cKCg==
--0000000000004f730b05fe93b957--
