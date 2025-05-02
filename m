Return-Path: <linux-man+bounces-2842-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 135B2AA6F4E
	for <lists+linux-man@lfdr.de>; Fri,  2 May 2025 12:17:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 21DCB1BC2840
	for <lists+linux-man@lfdr.de>; Fri,  2 May 2025 10:17:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1079123C507;
	Fri,  2 May 2025 10:17:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hmYMwqCs"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17CB023C4EF
	for <linux-man@vger.kernel.org>; Fri,  2 May 2025 10:17:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746181024; cv=none; b=q3P+Sy7A/eBm3QgGen+a+Hqu6bUZxCVFeMZfe1nCD4K8L8egQMLejN7ce2K2EDzGhEK+yoEWOWipMYCU/7h/9RPPuZZ3dZzqln6ojlSeNVd3BweUkmay1l2JPy5p7lFo9la4GnxAyZFjVsqR24Oe/lv0uh9/kPuTKk8Y6ng+/jM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746181024; c=relaxed/simple;
	bh=44zacfyhPz0c5XwFMP5GMzjDRS1L9FlMqce7aHBnylY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=L2cOOG3++d7SSJ4K6+x7mjTJHNVuDMrGHp3R6vYhnWZUKNU4egO6eK9aHNdReMO37DIQhWijkkZwVL8ggA1eGrn+60u7WSCBfj9kvmLVfuV3yo5iQCkg8GYAwz2GIULPyv4CQjgUYh9uf2nSpO/TEQhvtOJRYHyBbcWhGclWguc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hmYMwqCs; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-39c0dfad22aso1149713f8f.2
        for <linux-man@vger.kernel.org>; Fri, 02 May 2025 03:17:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746181021; x=1746785821; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=XU1YD04EaFgrz4mb0loNFgBH7NFn9HGJrjejHVmKqbI=;
        b=hmYMwqCs0TU5oZX5UvRoCJCH1K8DQwJVQCEiZ0rjHEthAOUpgkKzixlpaszrm62xOM
         Gwkhhjkc1+K8fxhWKFSh26o/3nxhnhzExOX4tkqeJim/Ozp675ywyH7EHBTp5Hf+k4sc
         UWxr02l+yGloeVCtBnDTKqqxL+aHOHHif/DaAVjj60Xb9mHITJNakTmOcqgIMTscG6Mn
         /3SF8M1UBfd0aQIr0tIUh8gRyioG0WCn8SWBGUc7tRGRaM3ZaZoeVWWUY4MCiz9y3Fml
         r9h5aYhbg88/kqBSlNEwoyQ8oOI0K6L5NzNxrzsvok/5k6KpIE1Skn478Epf8B9HLVyv
         2nzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746181021; x=1746785821;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XU1YD04EaFgrz4mb0loNFgBH7NFn9HGJrjejHVmKqbI=;
        b=B+Xl4FIKU+Ih+PAX9TeQfFVlMUDwUdz+woRaDdkYSI18H0gRH3zWERKxrt6yc8wnu6
         4Z5P3/Gb6AnPZxoAdPGML/pX7bKRqRIJIl+HPKjU7XiqJS+mhGMOsQVoprF08aCBZff/
         zYyUuYP+TJs9jiWtXh3xy00Sr+IOQ/ufUF+f6hiqJ7GTSa4X2+6zRT6hw8JMUJBacc0g
         LY/JkSkgRapKII/GcBJ0A0pmwFpFpxTzWtRp/d7pgkgXXrjyRjl4s+e2DNGScTtocOXl
         zXboCQcglQAxYlJ9eUeDyaBGJyebXtHSY3WPc8IOkn4edrL07SgYjC+ACY5C/0UJykyx
         PcaA==
X-Forwarded-Encrypted: i=1; AJvYcCUV2XQA8djaBeHkW/IoYJk27xKq6ArOJ3FCYGP5yyFHqYfOP/fE2wlfv8ZukaMtCnOqtgNiyfpLAVs=@vger.kernel.org
X-Gm-Message-State: AOJu0YxQjyiFXGZO26+rUZtEbh0wHBZ65sBoeSfqwZhAqPC1sQ6tNl+H
	BtBzEgfKkIdLlrPLPFDm1tRUO1Yy+u6c55a09a9WiavqY0gOjUL5
X-Gm-Gg: ASbGncvFyNR8Pm/eICCXaVxJNDobqqamxjfhEEYlW3AACVuKmLcC5p3Fs6cqLOB8x6Y
	bb8QTjfigT403A4Npmo58cFlRlZcnxLKLdJB5TnVWeNHMpIWSxrB1cZBYUDKSkcwTy5FHzkYkj6
	lqpV3u98sttS/p02qO9598gmlXS8A2EGKUHJEriQyo6ptVGnCuLs8pDiOERwbVBxd8gF7e81yFc
	MLkTO0OF/rylBDrDQOIvNTNYxx+ZqxmEQROaDQfR2QMbLDwcUJmUsBQ8bO/zqVWKsANb2Jy9CYe
	lHIaL/vJr7VmcWOPZ7ugfHRYPEwJFH2maCMlcAcAiZOG2WM1+yaRioYsvDC5lWJJ9LdVTyOLibI
	0Tw==
X-Google-Smtp-Source: AGHT+IFo4JVJgvnE6WA9ZJSsOClF5wqayQHgup0DnQPyOIzR/Wi1BZrCu6VxD/mPUHEfv33Qlfg5xQ==
X-Received: by 2002:a05:6000:1a86:b0:39c:142d:c0a with SMTP id ffacd0b85a97d-3a099ad61c5mr1512956f8f.19.1746181021124;
        Fri, 02 May 2025 03:17:01 -0700 (PDT)
Received: from localhost (ip87-106-108-193.pbiaas.com. [87.106.108.193])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-3a099ae7a35sm1691367f8f.43.2025.05.02.03.17.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 May 2025 03:17:00 -0700 (PDT)
Date: Fri, 2 May 2025 12:16:46 +0200
From: =?iso-8859-1?Q?G=FCnther?= Noack <gnoack3000@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jared Finder <jared@finder.org>, Jann Horn <jannh@google.com>,
	Hanno =?iso-8859-1?Q?B=F6ck?= <hanno@hboeck.de>,
	Jiri Slaby <jirislaby@kernel.org>, Kees Cook <kees@kernel.org>,
	linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2const/TIOCLINUX.2const: Document CAP_SYS_ADMIN
 requirement for TIOCL_SETSEL modes
Message-ID: <20250502.650a645dd94d@gnoack.org>
References: <20250501110024.9225-2-gnoack3000@gmail.com>
 <26e2aje76rj4guq7g3isno6ni2lnzevgywq7y5odnkrykr7gqr@2qmexziuowok>
 <20250501.0561ccffe9d6@gnoack.org>
 <v3665whb45ai5elelq456u7g5ihpikfhziinrbdyjvyg2kpg4w@ptcxy4u75n2o>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <v3665whb45ai5elelq456u7g5ihpikfhziinrbdyjvyg2kpg4w@ptcxy4u75n2o>

Hello Alejandro!

On Thu, May 01, 2025 at 10:19:01PM +0200, Alejandro Colomar wrote:
> On Thu, May 01, 2025 at 09:33:52PM +0200, Günther Noack wrote:
> > > > @@ -118,11 +130,11 @@ If mouse reporting is not enabled for the terminal,
> > > >  this operation yields an
> > > >  .B EINVAL
> > > >  error.
> > > > -.RE
> > > >  .IP
> > > > -Since Linux 6.7, using this subcode requires the
> > > > +Since Linux 6.12.26, using this selection mode requires the
> > > >  .B CAP_SYS_ADMIN
> > > >  capability.
> > > 
> > > I'm not sure I understand this part.  Was it required since 6.7 and now
> > > it's only since 6.12.26?  How can that be?
> > 
> > Legitimate question.  For the TIOCL_SELMOUSEREPORT selection mode, the
> > requirement was briefly lifted (but in a confusing way due to an
> > implementation mistake).
> > 
> > The way that the diff came out is slightly misleading.  Note that the
> > .RE "moved", which really means that this text is now talking about
> > the TIOCL_SELMOUSEREPORT selection mode instead of the TIOCL_SETSEL
> > subcode - so we are now documenting the more fine-grained selection
> > modes instead of the more coarse grained TIOCL_SETSEL subcode.
> > 
> > For the selection modes, we had three cases:
> > 
> >  1. The selection modes which continue to require CAP_SYS_ADMIN.
> >     For these this is true before and after these kernel patches,
> >     so this is "required since Linux 6.7", as before.
> > 
> >  2. The selection modes which do not require CAP_SYS_ADMIN any more.
> >     For these, I dropped the remark.
> >     
> >  3. The TIOCL_SELMOUSEREPORT selection mode.  For this one, we had an
> >     unfortunate back-and-forth for when CAP_SYS_ADMIN is required:
> > 
> >     - It used to not be required.
> >     - It was required in 6.7+
> >     - After 2f83e38a095f, which aimed to loosen the requirement, it
> >       was *sometimes required* (unintentional and really too confusing
> >       to describe in a man page, IMHO)
> >     - After ee6a44da3c87 (coming up in Linux 6.12.26), it requires
> >       CAP_SYS_ADMIN again.
> 
> Hmmmm.
> 
> > So for TIOCL_SELMOUSEREPORT, I am now saying it is required since
> > 6.12.26 (an upcoming stable kernel).
> 
> Makes sense.  However, 6.12.26 is a branch, and we would need to clarify
> what's the state in 6.{13,14,15}, don't we?

Both patches are applied to all up-to-date versions of stable kernels.

6.7 to 6.11  (EOL) have none of the two patches:
             CAP_SYS_ADMIN is enforced broadly
6.12.26      (longterm) has both
6.13.12      (EOL) has only the first patch
6.14.5       (stable) has both
6.15         (not released yet) will have both


> >  But we can as well change it to
> > say "since 6.7" if that sounds better to you.  Maybe that would be
> > simpler and err on the safe side for users of the API.  (To be fair,
> > these interfaces are anyway only used by gpm and consolation. I am
> > mostly documenting it for completeness.)
> > 
> > Do you have a preference how to word this?  Should we say "since Linux
> > 6.7" instead?
> 
> I don't have a preference.  Maybe since Linux 6.7 is easier than saying
> since Linux 6.12.26, 6.13.x, 6.14.y, and 6.15.z.

Yes, I think so too.  I'll send a V2 that says "since Linux 6.7".  The
fact that we permitted some of these invocations without CAP_SYS_ADMIN
was a bug in hindsight and only a temporary state.

Thanks,
–Günther

