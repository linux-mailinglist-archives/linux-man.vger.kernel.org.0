Return-Path: <linux-man+bounces-1773-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CC9B972BDB
	for <lists+linux-man@lfdr.de>; Tue, 10 Sep 2024 10:16:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EA18D280C4F
	for <lists+linux-man@lfdr.de>; Tue, 10 Sep 2024 08:16:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21CDB18755F;
	Tue, 10 Sep 2024 08:11:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GBNo9lUW"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E5517E004
	for <linux-man@vger.kernel.org>; Tue, 10 Sep 2024 08:11:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725955902; cv=none; b=P8uS3lohRS1aiUBkwKHf5D/Api8hCMrglZilWTo3PxKUFnq88UmsPxpZ1NYbnfUJS7i9jswn8pFZdh5IWsqeXRaIO8FBKNNIc53sIfPd51Y4/vFrY0BSZJLo/iMys6PsjHkfl9QyUSa3BCAp3+Kkk22ynJFS9hhOsFhSBCKQpSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725955902; c=relaxed/simple;
	bh=dhTfDvJF3PVx2XMHWw0P+SYyA7TXf9jcl6s3tNRDWp4=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=c4rPVSat1boD/rUduNfzzjm8NZ5OSN6AnQnm8c5ngJ7ABpsrJ68QrxQiass7MSFB1X+hJ9e62pMOLjIkOtT31Z9snJFwnQxXUy5ejLueyeB5iKGbP/h+zZ3mc6axZbZMdGZkiC0bOCHoS0yicdwcqh5mLaPYUSI18AEHEe6fBAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GBNo9lUW; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-a8d60e23b33so230415866b.0
        for <linux-man@vger.kernel.org>; Tue, 10 Sep 2024 01:11:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725955899; x=1726560699; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=qdisNrmAGi5Fy3+Ep+m0DEQtMQ/+ilcD7fcJstizNbA=;
        b=GBNo9lUWEremEfuAoVfLJMl0T+7dnc2MucLIXLQcTRbrofJPC67AcTaTa1Kv358/AC
         EQy6N+lJfPdz/Rnj1NZki9yaXTXWZP89DEyuWdqk5uuMZlQa+7MbiR57y1oAGxDJP3YV
         3DsCGLxRQOXHc6o4f1jUW5MY5Hd2vlfKyH8EauUwEz1aWf6VzR0fY7N/VGU5bqVW+/DM
         /yqYB98NTbMt09u6YN82OUoLPbGHmqiFa/Bh0R3s6myygmcEFc9bc2fgzq+DvqvoG0KH
         Mxv0iP0jDSEjLx7a4dCsXUlkOj1br7o027yNRf9ONQXSl/pzOrSw87a739qvaFlzzPbv
         WKoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725955899; x=1726560699;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qdisNrmAGi5Fy3+Ep+m0DEQtMQ/+ilcD7fcJstizNbA=;
        b=u0RHo+1poxAD8TBQkilFKCwNbT2lPSlJCATSNHRLJFwlN4df3JsnExFHoet1mec1Zq
         JkhXxsDKfQyuUE7y/LkMSv2H0H+4qUw7qjYcXg5zqGP1YUIB/e56qwlA5UWDJE0oP7s7
         0GkS97kTzy8B22msLKno4zz8NaBwwVxYhLslRHjSP4DAJVG80zIVF8jTUiasJSTQZJzR
         K0g0BUuMCUqxa1WsNoMQosX1joYoxMu7Z4mlGEPRKROsgzy8z/6Sk5njHwtbOxC+N2Fe
         1vvJXihL44gibrC21ID7fh0jirOlMRp8kKtRg6W1cYKVAp/Vq+Ciefo656846nUXobhP
         TKGg==
X-Gm-Message-State: AOJu0YxXr34ejw0VbLqJ8XV856TzBYFloH/559fTht3F0j8qslMDyzwG
	DkHahn/hwkiJmJWzUPx6AXEh5Ny6EPFgM8+Q5ALZx6xfhs517QtZSgJnH9x0
X-Google-Smtp-Source: AGHT+IE86E6mwg+NuDFhackvliU2m1NsE6DzbiQPx0PUtQCn81H/9f34cf9DuIvO2k8t27Ys5Y/05A==
X-Received: by 2002:a17:906:f58a:b0:a8d:61ca:271e with SMTP id a640c23a62f3a-a8d61ca2952mr483622866b.6.1725955899115;
        Tue, 10 Sep 2024 01:11:39 -0700 (PDT)
Received: from krava (2001-1ae9-1c2-4c00-726e-c10f-8833-ff22.ip6.tmcz.cz. [2001:1ae9:1c2:4c00:726e:c10f:8833:ff22])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a8d25c60f0bsm446618866b.125.2024.09.10.01.11.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Sep 2024 01:11:38 -0700 (PDT)
From: Jiri Olsa <olsajiri@gmail.com>
X-Google-Original-From: Jiri Olsa <jolsa@kernel.org>
Date: Tue, 10 Sep 2024 10:11:36 +0200
To: =?iso-8859-1?Q?G=FCnther?= Noack <gnoack3000@gmail.com>
Cc: linux-man@vger.kernel.org, alx@kernel.org
Subject: Re: [PATCHv4 7/7] man2: Add uretprobe syscall page
Message-ID: <Zt__OKtOj8AZGy4X@krava>
References: <20240502122313.1579719-1-jolsa@kernel.org>
 <20240502122313.1579719-8-jolsa@kernel.org>
 <20240909.b1e65f8b63ca@gnoack.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240909.b1e65f8b63ca@gnoack.org>

On Mon, Sep 09, 2024 at 10:26:37PM +0200, Günther Noack wrote:
> Hello Jiri!
> 
> Sorry to revive this old thread with a meta-question...
> 
> We were discussing the workflow of using a single patch set for
> sending man pages together with kernel changes, and Alejandro pointed
> out on https://lwn.net/Articles/989398/ that you have been doing this
> in the past on this and other threads.
> 
> I have been trying to reconstruct how you have done this, and so far,
> my best guess is that the process is to:
> 
> 1. `git fetch` the man pages project into the same local repo where
>    you keep the kernel tree;
>    
> 2. prepare man page patches and kernel patches in that same repo
>    (probably using the git worktree feature);
>    
> 3. git format-patch with --subject-prefix="PATCH bpf-next" and a
>    revision range that gives both "dotted ranges" at the same time, e.g.
> 
>    git format-patch -v23 --cover-letter \
>        linux-master..mylinuxbranch man-master..mymanbranch
> 
> 4. In the resulting mail files, hand-edit the subject prefix in the
>    man page commit, in addition to the cover letter.
> 
> Is that an accurate description of your process?  Or am I overlooking
> another trick or tool that I could use here?  Is this a practice that
> other people are using as well?

hi,
bit simpler than that ;-) I kept kernel and man git repos separated

I have some extra tooling in place, but for this patchset I basically did:

 - git format-patch --prefix=... for kernel changes
 - git format-patch --prefix=... for man changes
 - changed the man patch to have proper patch index in subject and file
   name, so it's sorted behind kernel patches
 - git send-email on all above files/patches

jirka

> 
> Thanks,
> –-Günther
> 
> On Thu, May 02, 2024 at 02:23:13PM +0200, Jiri Olsa wrote:
> > Adding man page for new uretprobe syscall.
> > 
> > Signed-off-by: Jiri Olsa <jolsa@kernel.org>
> > ---
> >  man2/uretprobe.2 | 45 +++++++++++++++++++++++++++++++++++++++++++++
> >  1 file changed, 45 insertions(+)
> >  create mode 100644 man2/uretprobe.2
> > 
> > diff --git a/man2/uretprobe.2 b/man2/uretprobe.2
> > new file mode 100644
> > index 000000000000..08fe6a670430
> > --- /dev/null
> > +++ b/man2/uretprobe.2
> > @@ -0,0 +1,45 @@
> > +.\" Copyright (C) 2024, Jiri Olsa <jolsa@kernel.org>
> > +.\"
> > +.\" SPDX-License-Identifier: Linux-man-pages-copyleft
> > +.\"
> > +.TH uretprobe 2 (date) "Linux man-pages (unreleased)"
> > +.SH NAME
> > +uretprobe \- execute pending return uprobes
> > +.SH SYNOPSIS
> > +.nf
> > +.B int uretprobe(void)
> > +.fi
> > +.SH DESCRIPTION
> > +Kernel is using
> > +.BR uretprobe()
> > +syscall to trigger uprobe return probe consumers instead of using
> > +standard breakpoint instruction.
> > +
> > +The uretprobe syscall is not supposed to be called directly by user, it's allowed
> > +to be invoked only through user space trampoline provided by kernel.
> > +When called from outside of this trampoline, the calling process will receive
> > +.BR SIGILL .
> > +
> > +.SH RETURN VALUE
> > +.BR uretprobe()
> > +return value is specific for given architecture.
> > +
> > +.SH VERSIONS
> > +This syscall is not specified in POSIX,
> > +and details of its behavior vary across systems.
> > +.SH STANDARDS
> > +None.
> > +.SH NOTES
> > +.BR uretprobe()
> > +syscall is initially introduced on x86-64 architecture, because doing syscall
> > +is faster than doing breakpoint trap on it. It might be extended to other
> > +architectures.
> > +
> > +.BR uretprobe()
> > +syscall exists only to allow the invocation of return uprobe consumers.
> > +It should
> > +.B never
> > +be called directly.
> > +Details of the arguments (if any) passed to
> > +.BR uretprobe ()
> > +and the return value are specific for given architecture.
> > -- 
> > 2.44.0
> > 

