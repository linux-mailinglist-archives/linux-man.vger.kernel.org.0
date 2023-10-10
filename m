Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7BD5C7C025A
	for <lists+linux-man@lfdr.de>; Tue, 10 Oct 2023 19:14:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232756AbjJJROh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 10 Oct 2023 13:14:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47234 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233824AbjJJROg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 10 Oct 2023 13:14:36 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0369C97
        for <linux-man@vger.kernel.org>; Tue, 10 Oct 2023 10:14:33 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-405361bb9f7so54893985e9.2
        for <linux-man@vger.kernel.org>; Tue, 10 Oct 2023 10:14:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1696958071; x=1697562871; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mL1ONcr61Ib7ScjkzkKZysiMUjN95IuX6Qlc25Z4TEY=;
        b=JbI+cVRgPPTHp64H6xixizxkmJu8l3akYP3D8sKzmCAW41qYiP91P7yFSSJT9H0eqE
         mOR/ETDyco+coMcBUzn8YEbu4UxSswSeJMXWrSjqDenNvUOvQnFR7/HtdwQLXlyO8lN+
         Kkjo/L4xcqsjl+gBMHnbrafuup96db2e8Ox7+6nqS19ALuIlp7qIKrHvirQR2es2EBnz
         8EZewrs7LYVp+wjNF0hXSJ3EiE+rTaL+I37/FLDadmcKhZx49EHv9krm4cH3i1kIEWFl
         u1R3w5RoCOKPXB9braxzaqrz9HHdP3gpcvkKtDIyMlv7LABuT+MyZXNIZIBMHjJHQIlm
         +ahQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696958071; x=1697562871;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mL1ONcr61Ib7ScjkzkKZysiMUjN95IuX6Qlc25Z4TEY=;
        b=M7WCyj9b2N9ryGgg2rb/Y2ct4wohgG5LZkgwwUWnlJe9HS6TlsbaUuWYVA4/akm7HP
         jF4tEISqZ/1d3r2HsoXE9/CEf+qUST0MuTRrkE/LhyFgEML30UWEmEPpjoEvZr6nHu3m
         pNHG9RP+80GcZ23y52U0UPiesQ3jBGJM8UYHHHBs1CfCxZRZ7WOyVds4+IQ4alPBkUSv
         zz84Xyp+/BdNq2pmuvDCDubCLu7DOOBA3Da6OtvfkQz0b+1ZyEOxWZcm3gCQlaNTzEmj
         kuDm+k4Q2iYxh96nhweUTpIrFnxopjVUKarsFa0Bhmo9VSj+4y26UOmXOlYN+PHDKPJS
         PTLQ==
X-Gm-Message-State: AOJu0YxNuuPrRl8V0in2nlK9O3n/gIOjTQX+KKO/rFAFMJJjPYBU3QsU
        LqeWuM/FNT6ralM2LBRD/HQUtBcqQDegh1D+g6HfPBN6/PnEXsJ4WS0=
X-Google-Smtp-Source: AGHT+IHQTIjhlkcO+mnCKlDvZWLFRrQo86zWj0NhaSwIn/+at3tMnwfJLah8RLYmnfVLfaXqf4+J2NO3xAhZGnhx1Gg=
X-Received: by 2002:adf:e9c7:0:b0:320:b1b:86a9 with SMTP id
 l7-20020adfe9c7000000b003200b1b86a9mr16081518wrn.24.1696958071211; Tue, 10
 Oct 2023 10:14:31 -0700 (PDT)
MIME-Version: 1.0
References: <20230919190206.388896-1-axelrasmussen@google.com>
 <20230919190206.388896-11-axelrasmussen@google.com> <20231009090951.GM3303@kernel.org>
In-Reply-To: <20231009090951.GM3303@kernel.org>
From:   Axel Rasmussen <axelrasmussen@google.com>
Date:   Tue, 10 Oct 2023 10:13:53 -0700
Message-ID: <CAJHvVcg8CDoXTjuWiABy8Mu-fwFmb6fVgHNXWwS=GVFNPx8j+g@mail.gmail.com>
Subject: Re: [PATCH 10/10] ioctl_userfaultfd.2: document new UFFDIO_POISON ioctl
To:     Mike Rapoport <rppt@kernel.org>
Cc:     Alejandro Colomar <alx@kernel.org>, Peter Xu <peterx@redhat.com>,
        linux-man@vger.kernel.org, linux-mm@kvack.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, Oct 9, 2023 at 2:10=E2=80=AFAM Mike Rapoport <rppt@kernel.org> wrot=
e:
>
> On Tue, Sep 19, 2023 at 12:02:06PM -0700, Axel Rasmussen wrote:
> > This is a new feature recently added to the kernel. So, document the ne=
w
> > ioctl the same way we do other UFFDIO_* ioctls.
> >
> > Also note the corresponding new ioctl flag we can return in reponse to =
a
> > UFFDIO_REGISTER call.
> >
> > Signed-off-by: Axel Rasmussen <axelrasmussen@google.com>
>
> With a small correction
>
> Reviewed-by: Mike Rapoport (IBM) <rppt@kernel.org>
>
> > ---
> >  man2/ioctl_userfaultfd.2 | 112 +++++++++++++++++++++++++++++++++++++++
> >  1 file changed, 112 insertions(+)
> >
> > diff --git a/man2/ioctl_userfaultfd.2 b/man2/ioctl_userfaultfd.2
> > index afe3caffc..1282f63e1 100644
> > --- a/man2/ioctl_userfaultfd.2
> > +++ b/man2/ioctl_userfaultfd.2
> > @@ -405,6 +405,11 @@ operation is supported.
> >  The
> >  .B UFFDIO_CONTINUE
> >  operation is supported.
> > +.TP
> > +.B 1 << _UFFDIO_POISON
> > +The
> > +.B UFFDIO_POISON
> > +operation is supported.
> >  .PP
> >  This
> >  .BR ioctl (2)
> > @@ -916,6 +921,113 @@ The faulting process has exited at the time of a
> >  .B UFFDIO_CONTINUE
> >  operation.
> >  .\"
> > +.SS UFFDIO_POISON
> > +(Since Linux 6.6.)
> > +Mark an address range as "poisoned".
> > +Future accesses to these addresses will raise a
> > +.B SIGBUS
> > +signal.
> > +Unlike
> > +.B MADV_HWPOISON
> > +this works by installing page table entries,
> > +rather than "really" poisoning the underlying physical pages.
> > +This means it only affects this particular address space.
> > +.PP
> > +The
> > +.I argp
> > +argument is a pointer to a
> > +.I uffdio_continue
>
> Did you mean uffdio_poison?

Ah, yes. :) Should have copy/pasted more carefully. I can send a v3
with this small correction.

>
> > +structure as shown below:
> > +.PP
> > +.in +4n
> > +.EX
> > +struct uffdio_poison {
> > +     struct uffdio_range range;
> > +                     /* Range to install poison PTE markers in */
> > +     __u64 mode;     /* Flags controlling the behavior of poison */
> > +     __s64 updated;  /* Number of bytes poisoned, or negated error */
> > +};
> > +.EE
> > +.in
> > +.PP
> > +The following value may be bitwise ORed in
> > +.I mode
> > +to change the behavior of the
> > +.B UFFDIO_POISON
> > +operation:
> > +.TP
> > +.B UFFDIO_POISON_MODE_DONTWAKE
> > +Do not wake up the thread that waits for page-fault resolution.
> > +.PP
> > +The
> > +.I updated
> > +field is used by the kernel
> > +to return the number of bytes that were actually poisoned,
> > +or an error in the same manner as
> > +.BR UFFDIO_COPY .
> > +If the value returned in the
> > +.I updated
> > +field doesn't match the value that was specified in
> > +.IR range.len ,
> > +the operation fails with the error
> > +.BR EAGAIN .
> > +The
> > +.I updated
> > +field is output-only;
> > +it is not read by the
> > +.B UFFDIO_POISON
> > +operation.
> > +.PP
> > +This
> > +.BR ioctl (2)
> > +operation returns 0 on success.
> > +In this case,
> > +the entire area was poisoned.
> > +On error, \-1 is returned and
> > +.I errno
> > +is set to indicate the error.
> > +Possible errors include:
> > +.TP
> > +.B EAGAIN
> > +The number of bytes mapped
> > +(i.e., the value returned in the
> > +.I updated
> > +field)
> > +does not equal the value that was specified in the
> > +.I range.len
> > +field.
> > +.TP
> > +.B EINVAL
> > +Either
> > +.I range.start
> > +or
> > +.I range.len
> > +was not a multiple of the system page size; or
> > +.I range.len
> > +was zero; or the range specified was invalid.
> > +.TP
> > +.B EINVAL
> > +An invalid bit was specified in the
> > +.I mode
> > +field.
> > +.TP
> > +.B EEXIST
> > +One or more pages were already mapped in the given range.
> > +.TP
> > +.B ENOENT
> > +The faulting process has changed its virtual memory layout simultaneou=
sly with
> > +an outstanding
> > +.B UFFDIO_POISON
> > +operation.
> > +.TP
> > +.B ENOMEM
> > +Allocating memory for page table entries failed.
> > +.TP
> > +.B ESRCH
> > +The faulting process has exited at the time of a
> > +.B UFFDIO_POISON
> > +operation.
> > +.\"
> >  .SH RETURN VALUE
> >  See descriptions of the individual operations, above.
> >  .SH ERRORS
> > --
> > 2.42.0.459.ge4e396fd5e-goog
> >
> >
>
> --
> Sincerely yours,
> Mike.
