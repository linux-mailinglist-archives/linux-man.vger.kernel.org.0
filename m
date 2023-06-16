Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5F456733C60
	for <lists+linux-man@lfdr.de>; Sat, 17 Jun 2023 00:26:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229952AbjFPW0W (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 16 Jun 2023 18:26:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60320 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229654AbjFPW0V (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 16 Jun 2023 18:26:21 -0400
Received: from mail-qk1-x733.google.com (mail-qk1-x733.google.com [IPv6:2607:f8b0:4864:20::733])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 59E73119
        for <linux-man@vger.kernel.org>; Fri, 16 Jun 2023 15:26:19 -0700 (PDT)
Received: by mail-qk1-x733.google.com with SMTP id af79cd13be357-7622a74e1cfso118936585a.0
        for <linux-man@vger.kernel.org>; Fri, 16 Jun 2023 15:26:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20221208; t=1686954378; x=1689546378;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Fp22I3WPTh1jLD6OTBvTdrQKofhyUnCqjexQyQcZRHE=;
        b=YT6PHUVbUWrcmssqWKf93wU/tNKyThimuBIElK/t0Kug1RRfrW7aNFVFclzun4pwI6
         CC6JvpxPiiMnfMkmoIX3PtEJjsMSFmqEV3NB/1S1gWH3OJGX2wgM2fyQhfXJLr19kOJR
         lqrl5RmEohdiN6C1ENmX+fVaJubo68DbDwYyR/H1pMt7fAtC1J/DZYImQOeUtNP0J/QE
         JwBNAnaDZfiA8sYFy6tef1KNonzL5WHu7sZTjsJP2/4UgLx0NbDOpOTLget5zxteOtmt
         8BK9r4+kyPUAdGd5418SxkGU1eT9cTPKC5ZJnq+FFmyAmJ20fBCf6pgdGfHp2mhGTzCn
         J0Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686954378; x=1689546378;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Fp22I3WPTh1jLD6OTBvTdrQKofhyUnCqjexQyQcZRHE=;
        b=Cpa/ISOUe8JDxhyIhv9lahYo1q0xdm493FDqeKcQ819gEZEXagmOqZmn7J92zpmtqO
         DM7O5y33B4IBDrofvvvkniP/3uJIIZCwzkAU++MzFbJqjbt/lT/LFu6//wFPgEsshFS6
         ZHuUwCgMJJMGx/4kKZCO2T2MfvNcubrkPeOjlVqe+pnKv/Xb1MZ2P33Sg1NjrBmKpTa6
         zKaYCKMuQdIZ5WHbaXOXTI6VzUsZDXkU3+n3dPUrm8OhNM8VzHoOHDaljdFAn/eGoUBz
         wXzZqRS2wpMNh7hnUqX/HWY/dh5tdkanmjzGqnA/CoLq4/cFVqxN9U8NXpNZslR2TGGY
         6q9w==
X-Gm-Message-State: AC+VfDyr4H6cyHYFEI7RUA2xfiUjTZkeEvtQFeli8/7bnp5Q/eNG9zfX
        godWTHVqffvql7L5jW8ePWglQ18lPiVGSaEiKmYjMtkxROr/gr65UaQ=
X-Google-Smtp-Source: ACHHUZ47VEmdreG6LNFasyTY+8hztsmlNtFYCQITiuXYYrZedWVJhXjPxIJud9qu2th3jSxfueWnKvCBzf/thqJKPTQ=
X-Received: by 2002:a05:6214:2aac:b0:62b:4e33:a16f with SMTP id
 js12-20020a0562142aac00b0062b4e33a16fmr3629659qvb.28.1686954378283; Fri, 16
 Jun 2023 15:26:18 -0700 (PDT)
MIME-Version: 1.0
References: <CAELULbeXgZWn+Nw_rpUzkGgNCtb7oFf1+JS=KnNVuLhcF5Vabg@mail.gmail.com>
 <CAELULbf=z2WWpHm5QDTK81oWTC9zMZJg2MA69mjOorJQ5QAzGw@mail.gmail.com>
 <CAJgzZopuptYOKHQ32-mau9gzwaWOmRtTACqdmfZvox=c2itp7w@mail.gmail.com>
 <781c88a1-b71f-f600-8d75-068a65855d16@gmail.com> <CAJgzZooLH5UnNU_j6jTkTFMCS+7gDMaTu9RYpSHnO2ELJat-+A@mail.gmail.com>
 <41ea7196-c824-196d-7794-0f61d0947bcd@gmail.com> <CAELULbcAtuqehXmDeRjOPtCOuriw9hrUU2Ndw8-i0Z=9GkbNzg@mail.gmail.com>
 <CAELULbfDFt2Z3T45_brzhWzL8182R=uxpHy_rSdgBSXpp+QQKQ@mail.gmail.com> <CAJgzZoqS-QJWX87P5B1LQxCktm9BAVfVVBwBxV87RhmQg0fsdg@mail.gmail.com>
In-Reply-To: <CAJgzZoqS-QJWX87P5B1LQxCktm9BAVfVVBwBxV87RhmQg0fsdg@mail.gmail.com>
From:   enh <enh@google.com>
Date:   Fri, 16 Jun 2023 15:26:06 -0700
Message-ID: <CAJgzZooCj9FcHwMam0TC_y6c33K8OFuWGGS0_-Ji+eEhLsXo_Q@mail.gmail.com>
Subject: Re: [PATCH] Fix the man page
To:     Zijun Zhao <zijunzhao@google.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>, alx@kernel.org,
        linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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

(oh, and you'll have to switch to plain text mode or it'll bounce!)


On Fri, Jun 16, 2023 at 3:25=E2=80=AFPM enh <enh@google.com> wrote:
>
> use `git format-patch -1` to generate a patch file, and then you can foll=
ow the instructions:
>
>        -  Send patches in diff -u format, inline inside the email message=
.  If
>           you're worried about your mailer breaking the patch, the send i=
t
>           both inline and as an attachment.  You may find it useful to em=
ploy
>           git-send-email(1) and git-format-patch(1).
> https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRIBU=
TING
>
> (note that gmail is very much a mailer that will break the patch, so you =
will need to send as an attachment.)
>
> On Fri, Jun 16, 2023 at 2:10=E2=80=AFPM Zijun Zhao <zijunzhao@google.com>=
 wrote:
>>
>> Hi Alejandro,
>>   I already created the patch attached in the last email.How to add it
>> to this page? Do I need to use git push, or just provide the patch?
>> Could you
>> help put it in .SH VERSIONS? Thank you!
>> Best,
>> Zijun Zhao
>>
>> On Mon, Jun 5, 2023 at 12:03=E2=80=AFPM Zijun Zhao <zijunzhao@google.com=
> wrote:
>> >
>> > Hi Alejandro,
>> >   I already created the patch attached below. How to add it to this
>> > page? Do I need to use git push, or just provide the patch? Could you
>> > help put it in .SH VERSIONS? Thank you!
>> > Best,
>> > Zijun Zhao
>> >
>> > On Fri, May 19, 2023 at 3:42=E2=80=AFPM Alejandro Colomar
>> > <alx.manpages@gmail.com> wrote:
>> > >
>> > > On 5/20/23 00:21, enh wrote:
>> > > > On Fri, May 19, 2023 at 1:03=E2=80=AFAM Alejandro Colomar
>> > > > <alx.manpages@gmail.com> wrote:
>> > > [...]
>> > >
>> > > >> You'll also need to add _Nullable to the function prototypes in t=
he
>> > > >> SYNOPSIS.
>> > > >
>> > > > heh, funnily enough, zijunzhao's adding exactly those annotations =
to
>> > > > the bionic headers, which is how we stumbled across this.
>> > >
>> > > :)
>> > >
>> > > >
>> > > >> BTW, I see that glibc still requires nonnull in gettimeofday(3). =
 It's
>> > > >> only settimeofday(3) that is nullable.
>> > > >
>> > > > yeah, but the _kernel_ allows null in both (see kernel/time/time.c=
),
>> > > > and this is section 2 of the man page. it's unclear to me whether
>> > > > that's worth calling out up here, or should be down in the
>> > > > Linux-specific section? (this page seems to be written as if it ca=
res
>> > > > about Hurd? "On a non-Linux kernel, with glibc ...".)
>> > >
>> > > Yes, we care about hurd, and non-g libc, in this page and others.
>> > > Normally, I would be cautious, and specify the strictest prototype o=
f
>> > > all implementations about which I care, but in this case, glibc seem=
s
>> > > unnecessarily restrictive, and I'm ready to add _Nullable if the ker=
nel
>> > > and some libc support that.  However, as a caution, please add a
>> > > (CAVEATS?) section documenting that glibc doesn't allow NULL there.
>> > > Or maybe keep the SYNOPSIS without _Nullable, and have some VERSIONS
>> > > section specifying that other libcs and the kernel support NULL.
>> > >
>> > > >
>> > > >> See:
>> > > >>
>> > > >>
>> > > >> $ grepc gettimeofday /usr/include/*/sys/time.h
>> > > >> /usr/include/x86_64-linux-gnu/sys/time.h:67:
>> > > >> extern int gettimeofday (struct timeval *__restrict __tv,
>> > > >>                          void *__restrict __tz) __THROW __nonnull=
 ((1));
>> > > >>
>> > > >>
>> > > >> /usr/include/x86_64-linux-gnu/sys/time.h:75:
>> > > >> #  define gettimeofday __gettimeofday64
>> > > >>
>> > > >>
>> > > >> $ grepc settimeofday /usr/include/*/sys/time.h
>> > > >> /usr/include/x86_64-linux-gnu/sys/time.h:86:
>> > > >> extern int settimeofday (const struct timeval *__tv,
>> > > >>                          const struct timezone *__tz)
>> > > >>       __THROW;
>> > > >>
>> > > >>
>> > > >> /usr/include/x86_64-linux-gnu/sys/time.h:106:
>> > > >> #   define settimeofday __settimeofday64
>> > > >>
>> > > >>
>> > > >> And while NULL may be non-UB, the manual page is not very clear o=
n why
>> > > >> someone would want to call these functions with NULL.  Could you
>> > > >> please also explain why would someone want to call these function=
s
>> > > >> with NULL?  (Let's discuss it in the list, and then we see what
>> > > >> wording we use for the page.)
>> > > >
>> > > > so there are definitely several orders of magnitude more users of =
a
>> > > > null timezone --- most callers don't want that (not least because
>> > > > glibc seems to not fill it out anyway? musl certainly doesn't,
>> > > > implementing gettimeofday() in terms of clock_gettime() instead).
>> > > >
>> > > > the users for a null time (and non-null timezone; i haven't seen
>> > > > anyone -- not even a test -- pass null for both!) are interesting.
>> > > > Android's init uses settimeofday() with only a timezone, but --
>> > > > although the timezone to use is settable in device-specific init
>> > > > scripts -- for devices in our tree, that's actually always 0. ther=
e's
>> > > > other proprietary (non-Google) code that uses gettimeofday() with =
only
>> > > > a timezone, and i'm honestly not sure whether it's deliberate that
>> > > > it's asking the _kernel_ for the timezone or not (i'm guessing the=
y
>> > > > want the device timezone rather than the app timezone, but i do no=
t
>> > > > believe there are devices where the _kernel_ timezone matches the
>> > > > device timezone?). certainly both of these use cases seem worth
>> > > > following up on, and i will do.
>> > >
>> > > Please.  And thanks for the details!
>> > >
>> > > >
>> > > > but looking at musl (which ignores tz in both cases) it seems like=
 the
>> > > > most impactful change would be to fix "The functions gettimeofday(=
)
>> > > > and settimeofday() can get and set the time as well as a timezone"=
 :-)
>> > >
>> > > :-)
>> > >
>> > > Makes sense; although it would be worth being clear about if that's
>> > > really true, and if libcs do support that as well as the kernel.
>> > >
>> > > >
>> > > > it also seems like an improvement to really call out the libc/kern=
el
>> > > > differences more clearly though.
>> > >
>> > > Sure.  Many pages have a dedicated subsection.  Feel free to add it
>> > > to this page.  I'd put it in .SH VERSIONS.
>> > >
>> > > $ grep -rn 'C library/kernel differences' man*
>> > > man2/sigprocmask.2:120:.SS C library/kernel differences
>> > > man2/setreuid.2:168:.SS C library/kernel differences
>> > > man2/brk.2:126:.SS C library/kernel differences
>> > > man2/sigwaitinfo.2:114:.SS C library/kernel differences
>> > > man2/gethostname.2:122:.SS C library/kernel differences
>> > > man2/getcpu.2:73:.SS C library/kernel differences
>> > > man2/fork.2:263:.SS C library/kernel differences
>> > > man2/epoll_wait.2:258:.SS C library/kernel differences
>> > > man2/wait4.2:157:.SS C library/kernel differences
>> > > man2/stat.2:355:.SS C library/kernel differences
>> > > man2/sigsuspend.2:74:.SS C library/kernel differences
>> > > man2/access.2:40:                /* But see C library/kernel differe=
nces, below */
>> > > man2/access.2:285:.SS C library/kernel differences
>> > > man2/clock_getres.2:354:.SS C library/kernel differences
>> > > man2/getpid.2:57:.SS C library/kernel differences
>> > > man2/setfsgid.2:57:.SS C library/kernel differences
>> > > man2/getgroups.2:142:.SS C library/kernel differences
>> > > man2/sigaction.2:946:.SS C library/kernel differences
>> > > man2/setresuid.2:100:.SS C library/kernel differences
>> > > man2/readv.2:290:.SS C library/kernel differences
>> > > man2/readv.2:342:.SS Historical C library/kernel differences
>> > > man2/open.2:1393:.SS C library/kernel differences
>> > > man2/setgid.2:58:.SS C library/kernel differences
>> > > man2/setfsuid.2:97:.SS C library/kernel differences
>> > > man2/ptrace.2:2814:.SS C library/kernel differences
>> > > man2/poll.2:382:.SS C library/kernel differences
>> > > man2/sigreturn.2:130:.SS C library/kernel differences
>> > > man2/eventfd.2:267:.SS C library/kernel differences
>> > > man2/mmap.2:729:.SS C library/kernel differences
>> > > man2/_exit.2:104:.SS C library/kernel differences
>> > > man2/time.2:86:.SS C library/kernel differences
>> > > man2/pread.2:101:.SS C library/kernel differences
>> > > man2/seccomp.2:975:.IR "C library/kernel differences" .
>> > > man2/setuid.2:104:.SS C library/kernel differences
>> > > man2/sched_setaffinity.2:95:return 0 (but see "C library/kernel diff=
erences" below,
>> > > man2/sched_setaffinity.2:220:.SS C library/kernel differences
>> > > man2/select.2:559:.SS C library/kernel differences
>> > > man2/sigpending.2:52:.SS C library/kernel differences
>> > > man2/posix_fadvise.2:135:.SS C library/kernel differences
>> > > man2/gettimeofday.2:173:.SS C library/kernel differences
>> > > man2/uname.2:83:.SS C library/kernel differences
>> > > man2/clone.2:1576:.SS C library/kernel differences
>> > > man2/getpriority.2:185:.SS C library/kernel differences
>> > > man2/signalfd.2:331:.SS C library/kernel differences
>> > > man2/timer_create.2:225:.SS C library/kernel differences
>> > > man2/wait.2:464:.SS C library/kernel differences
>> > > man2/nice.2:80:.SS C library/kernel differences
>> > > man2/chmod.2:303:.SS C library/kernel differences
>> > > man2/seteuid.2:114:.SS C library/kernel differences
>> > > man3/getcwd.3:217:.SS C library/kernel differences
>> > > man3/killpg.3:98:.SS C library/kernel differences
>> > > man3/mq_notify.3:174:.SS C library/kernel differences
>> > > man3/mq_open.3:269:.SS C library/kernel differences
>> > > man3/sigqueue.3:118:.SS C library/kernel differences
>> > > man3type/epoll_event.3type:37:.SS C library/kernel differences
>> > > man7/man-pages.7:402:.I "C library/kernel differences"
>> > >
>> > > Cheers,
>> > > Alex
>> > >
>> > > >
>> > > >> Thanks!
>> > > >> Alex
>> > > >>
>> > > >> --
>> > > >> <http://www.alejandro-colomar.es/>
>> > > >> GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5
>> > > >>
>> > >
>> > > --
>> > > <http://www.alejandro-colomar.es/>
>> > > GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5
