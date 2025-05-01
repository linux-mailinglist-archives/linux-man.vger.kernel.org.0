Return-Path: <linux-man+bounces-2835-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C0B6AA641E
	for <lists+linux-man@lfdr.de>; Thu,  1 May 2025 21:34:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DF3997ABADF
	for <lists+linux-man@lfdr.de>; Thu,  1 May 2025 19:33:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74E2821127E;
	Thu,  1 May 2025 19:34:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="g1TfICkE"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6957718DB3D
	for <linux-man@vger.kernel.org>; Thu,  1 May 2025 19:34:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746128048; cv=none; b=Sj1ZLCT5bLOsMcSgdOi/kJURCY88GJRp0Yt+pckz4hKkEVzLxcKr33CPsubd2ApwVU0+yPlSwxEHSNzMbFKPnCakkGEpb/eXfeKwIk1048Oh16DF1RAbPflhCu9Ovj9Esgbci6IGB/QYWkna9AKQfjG7ScAMIDROEcrlQdlWlcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746128048; c=relaxed/simple;
	bh=v+SsWrePmySK7HwQeC8jUSm15fCC0ecm+rwSbCxrhY8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ne0D/tT7anNRXNTUvaKFebIuRZtV17tRAMtoPj+MD1GpbkNa4VQcFUI6d1RsT7tNQXt9FehLHuVgM91lYUNHAskD+LlN+DJtX5rv+IHSYu/8NihP2i5rnQMf64b6mb4eBmThLKfcCaDhH4VC2NoO4gWWcuW3/dzA928kyT1fWhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=g1TfICkE; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-39ee682e0ddso720815f8f.1
        for <linux-man@vger.kernel.org>; Thu, 01 May 2025 12:34:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746128044; x=1746732844; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=EvKdGs+MNSb3VWK5G5DV7f3TKPKMapberpfCWVSHXr0=;
        b=g1TfICkEEt/HtE3DQYJ9t5iSooAiq5/tZB9a3YP0tjm7XHkOWzlyCvaHN0kurLHuwt
         nxFY0miK1QMCSg5DPelEmCMSpqWog9iUsuLiHrGcbafUh8F0UzeTFyig3ef1ZJErowCW
         bAoNgsUs/TYYGGFv1jDd3He6mHhSVfFuiDMIZfBhEr2EmsHLY/4GWQYW3Yx7Zs9JOUGm
         PzKStd5FvlqFlvN6gzjYBnj8iOq6ztHYX2eXG04QCGqLbfRY+2tMCVcrSyJcMTxeBqET
         HN5ArJJJJ6xeAEvuZjJCUTNNyGDW25Ma59mDN2aHq+qjsd9E3u/Gxg4xbi68MJlWIUQy
         q6yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746128044; x=1746732844;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EvKdGs+MNSb3VWK5G5DV7f3TKPKMapberpfCWVSHXr0=;
        b=DSqBihEx66cgMyW50YLVlyGwjkkGkpinyTOIk3v13f9lA0qfZq579iLxSA4Ix4XyGc
         hnTAhcnHM4pYT5oJdJOQGlllsPrAoVkaFwhCukiCDsW8atQIFtZ4ZyoqwaQj6XwkOjKx
         t8goyIeOSpPMhWizTLFmBnqRJf3jSLBlaxBgg14aibnzHBu+wg4ZTp/GuK/rztgNj6fU
         /kFVOyJZSJRxA3QDHjgf9DC5NlZCyzRjbetcOUrDLzyzTnE98VnUBfxjgyGBAModlbhi
         p7MTFn6xB314Z0pRLNiY7PEESvFTrWvSN/Wc/uLx1IbvH3MalibJ3EjRsXAiqGHsZYtV
         mkLg==
X-Forwarded-Encrypted: i=1; AJvYcCVSfuuGQ+h9ZywOwmOOm1QHJOjID/9RyecFZDKPDZxukQwSnoDI8AODSQKBxP8ao/0TCZLTgMVBZ9g=@vger.kernel.org
X-Gm-Message-State: AOJu0YxVJjcHq4rAG9A7GNYVKLjhwxn3KK28m34N75gD3vQK+CnBQn15
	XQzpiA0l5y8YfqlvgW1ERMqZmfKaZS+Glk3cA+7DNtDTLzWRFHvM
X-Gm-Gg: ASbGncu5oaZ4fpPsLA8rEgHjYIFVeel12JGwHZgK0FFFBYLGpe8Jf96X2Mmz24jgkO7
	50pijHx5zyOyzFlL9VjYhCslrOUkCyyN6EUG5qDZkugUZ9fo0/wc/hGfHasGmxakn53cIE7at3x
	FUN2BUDMXmX21mf5Ma4BiZbHFRa0POHYrObMB1giwQOCECn+Ox8lO64O2QOdIAaD8hMdP5ThPBP
	mm57upU+a6cz8s2EW4YFqZBQKaVHF+m3Qh3rAOxCeUr26Tim0+yCPyzHnYmKCJMH2zQY4AvIDnd
	iqPN13aeAfRY68pIn0fRzn0wDCbuCKbhl//hqSbGF9GOXrgQVb888DQfeqLFIU5ttms=
X-Google-Smtp-Source: AGHT+IGsvATt1lJ4W6F276tS7/e/oFuJwvACZKsIwwlWsIA59MV4YBiioVjshs0KNPTJB9T16zjpvA==
X-Received: by 2002:a05:6000:4312:b0:391:9b2:f48d with SMTP id ffacd0b85a97d-3a099adcff7mr68998f8f.33.1746128044218;
        Thu, 01 May 2025 12:34:04 -0700 (PDT)
Received: from localhost (ip87-106-108-193.pbiaas.com. [87.106.108.193])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-3a099b16ea2sm35128f8f.85.2025.05.01.12.34.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 May 2025 12:34:03 -0700 (PDT)
Date: Thu, 1 May 2025 21:33:52 +0200
From: =?iso-8859-1?Q?G=FCnther?= Noack <gnoack3000@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jared Finder <jared@finder.org>, Jann Horn <jannh@google.com>,
	Hanno =?iso-8859-1?Q?B=F6ck?= <hanno@hboeck.de>,
	Jiri Slaby <jirislaby@kernel.org>, Kees Cook <kees@kernel.org>,
	linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2const/TIOCLINUX.2const: Document CAP_SYS_ADMIN
 requirement for TIOCL_SETSEL modes
Message-ID: <20250501.0561ccffe9d6@gnoack.org>
References: <20250501110024.9225-2-gnoack3000@gmail.com>
 <26e2aje76rj4guq7g3isno6ni2lnzevgywq7y5odnkrykr7gqr@2qmexziuowok>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <26e2aje76rj4guq7g3isno6ni2lnzevgywq7y5odnkrykr7gqr@2qmexziuowok>

Hello Alejandro!

On Thu, May 01, 2025 at 05:05:33PM +0200, Alejandro Colomar wrote:
> On Thu, May 01, 2025 at 01:00:23PM +0200, Günther Noack wrote:
> > CAP_SYS_ADMIN was previously required for the entire TIOCL_SETSEL
> > subcode, but is now only needed for a subset of the selection modes,
> > since linux.git 2f83e38a095f ("tty: Permit some TIOCL_SETSEL modes
> > without CAP_SYS_ADMIN").
> > 
> > The CAP_SYS_ADMIN requirement for TIOCL_SELMOUSEREPORT was further
> > corrected in linux.git ee6a44da3c87 ("tty: Require CAP_SYS_ADMIN for
> > all usages of TIOCL_SELMOUSEREPORT").
> 
> In these commit references, it would be interesting to include the
> commit date (when there are more than one, to get an idea of the
> chronology).  This git alias might be useful for you to produce these
> references:
> 
> 	$ grep -A1 '\<ref\>' /etc/gitconfig 
> 		ref = show --no-patch --abbrev=12 --date=short \
> 			--format=tformat:'%C(auto)%h%C(reset) %C(white)(%cd%x3B \"%C(reset)%C(auto)%s%C(reset)%C(white)\")%C(reset)'
> 	$ git ref 2f83e38a095f ee6a44da3c87
> 	2f83e38a095f (2025-01-13; "tty: Permit some TIOCL_SETSEL modes without CAP_SYS_ADMIN")
> 	ee6a44da3c87 (2025-04-11; "tty: Require CAP_SYS_ADMIN for all usages of TIOCL_SELMOUSEREPORT")

Thanks, that's a useful alias.

> > Link: <https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit?id=2f83e38a095f8bf7c6029883d894668b03b9bd93>
> > Link: <https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit?id=ee6a44da3c87cf64d67dd02be8c0127a5bf56175>
> > Signed-off-by: Günther Noack <gnoack3000@gmail.com>
> > ---
> >  man/man2const/TIOCLINUX.2const | 16 ++++++++++++++--
> >  1 file changed, 14 insertions(+), 2 deletions(-)
> > 
> > diff --git a/man/man2const/TIOCLINUX.2const b/man/man2const/TIOCLINUX.2const
> > index 61f1c596d..f48132ea1 100644
> > --- a/man/man2const/TIOCLINUX.2const
> > +++ b/man/man2const/TIOCLINUX.2const
> > @@ -72,18 +72,30 @@ may be one of the following operations:
> >  Select character-by-character.
> >  The indicated screen characters are highlighted
> >  and saved in a kernel buffer.
> > +.IP
> > +Since Linux 6.7, using this selection mode requires the
> > +.B CAP_SYS_ADMIN
> > +capability.
> >  .TP
> >  .B TIOCL_SELWORD
> >  Select word-by-word,
> >  expanding the selection outwards to align with word boundaries.
> >  The indicated screen characters are highlighted
> >  and saved in a kernel buffer.
> > +.IP
> > +Since Linux 6.7, using this selection mode requires the
> > +.B CAP_SYS_ADMIN
> > +capability.
> >  .TP
> >  .B TIOCL_SELLINE
> >  Select line-by-line,
> >  expanding the selection outwards to select full lines.
> >  The indicated screen characters are highlighted
> >  and saved in a kernel buffer.
> > +.IP
> > +Since Linux 6.7, using this selection mode requires the
> > +.B CAP_SYS_ADMIN
> > +capability.
> >  .TP
> >  .B TIOCL_SELPOINTER
> >  Show the pointer at position
> > @@ -118,11 +130,11 @@ If mouse reporting is not enabled for the terminal,
> >  this operation yields an
> >  .B EINVAL
> >  error.
> > -.RE
> >  .IP
> > -Since Linux 6.7, using this subcode requires the
> > +Since Linux 6.12.26, using this selection mode requires the
> >  .B CAP_SYS_ADMIN
> >  capability.
> 
> I'm not sure I understand this part.  Was it required since 6.7 and now
> it's only since 6.12.26?  How can that be?

Legitimate question.  For the TIOCL_SELMOUSEREPORT selection mode, the
requirement was briefly lifted (but in a confusing way due to an
implementation mistake).

The way that the diff came out is slightly misleading.  Note that the
.RE "moved", which really means that this text is now talking about
the TIOCL_SELMOUSEREPORT selection mode instead of the TIOCL_SETSEL
subcode - so we are now documenting the more fine-grained selection
modes instead of the more coarse grained TIOCL_SETSEL subcode.

For the selection modes, we had three cases:

 1. The selection modes which continue to require CAP_SYS_ADMIN.
    For these this is true before and after these kernel patches,
    so this is "required since Linux 6.7", as before.

 2. The selection modes which do not require CAP_SYS_ADMIN any more.
    For these, I dropped the remark.
    
 3. The TIOCL_SELMOUSEREPORT selection mode.  For this one, we had an
    unfortunate back-and-forth for when CAP_SYS_ADMIN is required:

    - It used to not be required.
    - It was required in 6.7+
    - After 2f83e38a095f, which aimed to loosen the requirement, it
      was *sometimes required* (unintentional and really too confusing
      to describe in a man page, IMHO)
    - After ee6a44da3c87 (coming up in Linux 6.12.26), it requires
      CAP_SYS_ADMIN again.

So for TIOCL_SELMOUSEREPORT, I am now saying it is required since
6.12.26 (an upcoming stable kernel).  But we can as well change it to
say "since 6.7" if that sounds better to you.  Maybe that would be
simpler and err on the safe side for users of the API.  (To be fair,
these interfaces are anyway only used by gpm and consolation. I am
mostly documenting it for completeness.)

Do you have a preference how to word this?  Should we say "since Linux
6.7" instead?

There are more details in the commit message of ee6a44da3c87
(2025-04-11; "tty: Require CAP_SYS_ADMIN for all usages of
TIOCL_SELMOUSEREPORT"), and in the related mail threads.


> > +.RE
    ^^^^
    The diff looks like I moved .RE,
    but I really moved the remark into a different indentation level.

> >  .TP
> >  .BR subcode = TIOCL_PASTESEL
> >  Paste selection.
> > -- 
> > 2.49.0

Thanks for the review!
–Günther

