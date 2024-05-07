Return-Path: <linux-man+bounces-887-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AF9D8BE164
	for <lists+linux-man@lfdr.de>; Tue,  7 May 2024 13:49:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id ECC99B293D5
	for <lists+linux-man@lfdr.de>; Tue,  7 May 2024 11:49:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A57AE156C77;
	Tue,  7 May 2024 11:49:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="J1urNUl+"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04AF4156F20
	for <linux-man@vger.kernel.org>; Tue,  7 May 2024 11:49:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715082545; cv=none; b=PKHsR+GJxdJemLwBieC2PMovRdywDZ4E5DMD9LB6z0OraZAZDMZ4gMLMnCaN9acvDIxZSDOPyumhoXZEzPJz6mmDQGuUIZPHSKZJ+8vgLLTy3wSbg3ADZwWSX3HjHM3kK6z1cajzL5OvYgC/PiGP4yNQRjKqUcIZ2yc1IHJl9K4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715082545; c=relaxed/simple;
	bh=Msl6UWM7XCqIT/Zs0tj/0OQC3XVFT5zQO9AmhB1fBVg=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=m6g0IZMIvzJZVX6wVOIR1eKxa3TGp7JfI84on+b/zRa1oICRNr6HTkfG2t4iGn2xod9diiCmidxTkVvhl+sM/gwVu+uxkz0CWj6msrGFsL3HvOWUFzONMUIG6KnuV0GaAsHM7mjiaVi0NmN9jOhKYsPpTNtkyEsfAfoOWMDqGYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=J1urNUl+; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-572c65cea55so4791666a12.0
        for <linux-man@vger.kernel.org>; Tue, 07 May 2024 04:49:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715082542; x=1715687342; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=NgAemnUGp3RigVp55vXW3+HAhvYUioMSVdKaN9GT/rk=;
        b=J1urNUl+kxmh/Ry+Mb3bS7dSRGD4qUXgbg4VywAssgvj8HBAcA2xhOV/VDqaRmUxXU
         7ozNEx9dhiK+JfRWBfaPNStgRff+bo3HjBpOcP+z2J+uGdfrr8ojqKNue55dFfryOmBe
         iraQvCEYLbKNJjDhpQH1+EEMYERvr9oZc6LIBYRDapINdm9H3CckXPVe0cc110J5AdBz
         Ve1bgkGM+s7xQfO6jmanUxEIz9WPeHbDKCUeehQ0UpKeBjDEZE2sO9JxxuVVWXhu2Uuc
         M90eCRNoWUEoobkgMKBEYvxBGpCu7M+9Cm/Pp7eBak7EhKZ1WKKwjHqng/dHW34dZvbE
         px/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715082542; x=1715687342;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NgAemnUGp3RigVp55vXW3+HAhvYUioMSVdKaN9GT/rk=;
        b=qCwoIh+m/W4DxIsjdX5Ppa5+lsRMaJlpiJG299eudXoeI90qyP+206DOaEMqFGkZVa
         0dWwhcplui+7XK6CyMamR/M7toztXjdBJq+8qOGN2W52TO4QaIq/Q6E1xDLrSreh+gge
         yur1brjJIZjjRLqB0V/Tbb5F5D/+4pTlUsdnGzd9g+IS7pL9Yl5YsFumq0MiW1hKPqlf
         lqkefWTBtjLdjfnWsPU2ZBqC6qLkdnwElsVVG/XwaqnYox+X/WoQegXj6LDWhhZ5mF3c
         xuvpO+T6VgEwGWvpQaBpCkXx6XdeoDugJJ5G0f7/2e1WduQ9fFwe/jFNR3dIlX28xOvI
         bjTw==
X-Gm-Message-State: AOJu0YxTrqgxJVF//j5RLs3h1wFfPG4qTn8OtWvyV/IlSZjNwgCYxXbX
	73xYr0Jo5B29TR3qAsFk1trb4M8hzunFlgGLQH1Wc4n1aI3/r43+oyqoFA==
X-Google-Smtp-Source: AGHT+IE6Heij3CqyepMUn+vuW5Qzn/HugaoOAYETApasTU/uAj0UlFySAWYIZsjCH49Ufq8Y1uEXpw==
X-Received: by 2002:a50:8d5c:0:b0:572:9503:4f8a with SMTP id t28-20020a508d5c000000b0057295034f8amr2069754edt.1.1715082542096;
        Tue, 07 May 2024 04:49:02 -0700 (PDT)
Received: from krava ([83.240.62.36])
        by smtp.gmail.com with ESMTPSA id t25-20020a056402241900b005725de35790sm6304142eda.61.2024.05.07.04.49.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 May 2024 04:49:01 -0700 (PDT)
From: Jiri Olsa <olsajiri@gmail.com>
X-Google-Original-From: Jiri Olsa <jolsa@kernel.org>
Date: Tue, 7 May 2024 13:49:00 +0200
To: "Dmitry V. Levin" <ldv@strace.io>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCHv5 8/8] man2: Add uretprobe syscall page
Message-ID: <ZjoVLGAcD7WxAC6T@krava>
References: <20240507105321.71524-1-jolsa@kernel.org>
 <20240507105321.71524-9-jolsa@kernel.org>
 <20240507111306.GA21812@altlinux.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240507111306.GA21812@altlinux.org>

On Tue, May 07, 2024 at 02:13:06PM +0300, Dmitry V. Levin wrote:
> On Tue, May 07, 2024 at 12:53:21PM +0200, Jiri Olsa wrote:
> > Adding man page for new uretprobe syscall.
> [...]
> > +.P
> > +Calls to
> > +.BR uretprobe ()
> > +suscall are only made from the user-space trampoline provided by the kernel.
> 
> typo: suscall

ugh, thanks, there'll be at least one other version to fill
in the kernel version in HISTORY section, I'll fix that

jirka

> 
> 
> -- 
> ldv

