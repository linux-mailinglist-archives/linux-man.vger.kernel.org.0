Return-Path: <linux-man+bounces-286-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A0C6681CB24
	for <lists+linux-man@lfdr.de>; Fri, 22 Dec 2023 15:11:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D31111C2241B
	for <lists+linux-man@lfdr.de>; Fri, 22 Dec 2023 14:11:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 489F51A5A2;
	Fri, 22 Dec 2023 14:11:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DE8viKUq"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8660720320
	for <linux-man@vger.kernel.org>; Fri, 22 Dec 2023 14:11:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-50e6a806e4aso546583e87.1
        for <linux-man@vger.kernel.org>; Fri, 22 Dec 2023 06:11:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703254307; x=1703859107; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=i/EI/VmQfQ3KSGXdooN1i6+dR+dWBQAiN4iy1C0OwFo=;
        b=DE8viKUq0RxcsondGCe8tyunOlK7FlsN78HhzQncowMVFK01icb38BG3k7UqhSEIbR
         xs3JTejTBBemSeV402kzwy454MQW4eggsvJjsp/87R2YfrAK0ObxoEAokvH9JLbbhmms
         ABuz77+3SWmWnVOF1xPgTOxP6mk8+A8IOIVU8PqVxs2TI5RUOnjjSWLO+rZ87SpHW/C2
         eNWlo7O4midiGBS9jYiOyZ/EuQI9JPPswrcNEPabID65teGI8qOvrLZjJ1Ok+kWp0d/P
         VXuCqHKZ/g/r5RLmFZZ2PpoNrFA5l1/Tidx4UnC/C+yJHWR3Ha2vikoRX4KBfjGT6LfY
         fMEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703254307; x=1703859107;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=i/EI/VmQfQ3KSGXdooN1i6+dR+dWBQAiN4iy1C0OwFo=;
        b=RnqQa2hVZcElFLHYq+J3I4sYwRUq0r02veAf2O9hlKbJ16EWRZPRz/99GrEUPwdmq8
         /SpsGF3s4MNkq7Ojx4aJ6CTtsgiVXAmqcuJo1A7xpbzsjvB6jTR9G/aJYuiMAqEsWGfX
         LM9eFGhoKkI72P4vtRCgcw9TQ24jmJZCuprFRCyaUcjan44qil6oslFYV2v4Wee4MqVf
         P7kyD9LUypahWVXUk71R9m1IRu0INmrXEHrGYJuzbKzD4FeU/6SoAQ0W1tt6GZMBtT2x
         2kHMfT5WYBBiSDCmvv6ck1JYhatxCHRsZSjpQH07S1SX8jePD6KqrGzTW0gnVf41my+m
         Z9bg==
X-Gm-Message-State: AOJu0YwKADYboDNjZftCwv5ZVCbCjjMs9fyJWBL1K5ZlB+8yHJUlqnD2
	DX5CxlCgr7GmWzL5bDc69+XsAOBQFi7SIgIWa5wKFemEHjw+
X-Google-Smtp-Source: AGHT+IHL0/C999cq4RodwxkhySMKppKh9PbOJeXVDhEimHi2GUe8gIwu+jsFE7oJ4bAiz+I5DkuRgAZeH2tAY8jpRI0=
X-Received: by 2002:a05:6512:931:b0:50e:1d6a:48d4 with SMTP id
 f17-20020a056512093100b0050e1d6a48d4mr700171lft.122.1703254307196; Fri, 22
 Dec 2023 06:11:47 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAKkEDkWv_wksbcAkUEaFdAQhkhZH1xr+pLidXAvKvV-ka7gE1Q@mail.gmail.com>
 <CAKkEDkU28SRY-dZOVdnGORV2f8ovOak1b=Pr8+bEFDb-B2vx+A@mail.gmail.com> <ZYVpRMcZk2MSg9Yc@debian>
In-Reply-To: <ZYVpRMcZk2MSg9Yc@debian>
From: rajesh <r.pandian@gmail.com>
Date: Fri, 22 Dec 2023 19:40:19 +0530
Message-ID: <CAKkEDkX_kw=5rwn5qcbt45RjWMtSuVNAzYDc2MEkaTr0FwQe3w@mail.gmail.com>
Subject: Re: Contributing to documentation
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Thanks, I'll check them out Alejandro. Yes I m ok with git (but
looking forward to learn more)

I also made a comment on https://bugzilla.kernel.org/show_bug.cgi?id=218266

Does my comment looks ok? The language, code etc,.? If it's ok then
putting this code in shutdown makes sense?

Thank you and happy holidays.

On Fri, 22 Dec 2023 at 16:17, Alejandro Colomar <alx@kernel.org> wrote:
>
> [CC += linux-man@]
>
> Hi rajesh,
>
> On Fri, Dec 22, 2023 at 02:27:21PM +0530, rajesh wrote:
> > Hi Alejandor,
> >
> > Thanks for the help so far. So I think I can contribute to two issues now.
>
> Thanks a lot for helping with the bugzilla bugs!
>
> > However going through the kernel patch videos, I am not sure how to
> > apply the patches to man pages.
>
> First of all, you should clone the git repository, and cd(1) into it:
>
>         $ git clone https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git
>         $ cd man-pages/
>
> I assume you know how to use git, do you?  After cloning that repo,
> you'll be able to read the README and CONTRIBUTING files.
>
> Assuming you want to modify mount_namespaces(7), you should edit the
> file <./man7/mount_namespaces.7>.
>
> Assuming you know how to use the basics of git(1) to do a commit, then
> you can produce a patch with
>
>         $ git format-patch -1 HEAD -o ./patches/ \
>                            --to alx@kernel.org \
>                            --cc linux-man@vger.kernel.org
>
> This will produce a file inside the ./patches/ directory, which you need
> to send via email.  You can send it with any mail client to start, and
> I can help you refine that.  Most mail clients mess the patch (they
> usually mess the whitespace), so it can't be applied with git(1), so you
> can configure git-send-email(1) to send it, which will respect the
> patch.  mutt(1) or neomutt(1) will by default also respect it, but
> git-send-email(1) is probably easier to configure for a start.  Check
> this:
> <https://git-scm.com/docs/git-send-email#_use_gmail_as_the_smtp_server>
>
>
> > Attachment is a no no.
>
> What do you mean?  I can accept attachments if you want to send a patch
> as an attachment.
>
> > I went through many links but not clear on what's process for patching
> > man pages.
>
> Here's the contributing guide we have:
> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRIBUTING>
>
> Although you may want to ask for clarification on some things that are
> not specified there.
>
> > Can you point me to some link or share some notes please?  I have
> > setup git, mutt, and have downloaded the latest stable kernel version.
>
> The Linux man-pages project is different from the Linux kernel project,
> and the code is in different repositories.  You don't need the kernel
> for contributing to the manual pages.  The guidelines for contributing
> are mostly the same, though.
>
> I've CCed the <linux-man@vger.kernel.org> mailing list, to which all
> contributions to the project should be sent, as per the contributing
> guide I've linked above.
>
> > Kind regards,
> > Rajesh
>
> Have a lovely day,
> Alex
>
> --
> <https://www.alejandro-colomar.es/>
> Looking for a remote C programming job at the moment.

