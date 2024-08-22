Return-Path: <linux-man+bounces-1654-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B4B8895BD5C
	for <lists+linux-man@lfdr.de>; Thu, 22 Aug 2024 19:34:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E49101C22FE6
	for <lists+linux-man@lfdr.de>; Thu, 22 Aug 2024 17:34:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFD501CEAC5;
	Thu, 22 Aug 2024 17:34:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=szeredi.hu header.i=@szeredi.hu header.b="o9VDAYZo"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96EE41CCB4B
	for <linux-man@vger.kernel.org>; Thu, 22 Aug 2024 17:34:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724348055; cv=none; b=ufEnRLjwmdcUa/1GR4ul9myKQvhHbGmxCKOz/aE+ELx8/hfjmglvqt9BWCxpQke7rYM7H824pvuVl9WTw0owLoitIm6fgOZc1Hi3TXW9ZC+vNkx2vVkG8JKI8MY0NBx7U6p3DMjIm++D2uEW2HqPJDyfMTr6pgKBl+glQs7fPJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724348055; c=relaxed/simple;
	bh=X271o9T50er59RtihIpbs8PRlf8ZCHxqW2OQG//RaMg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bpCNKXy7mTLp9P7clvC9Z3LTndk7zGqSmwPHYQU2znRjlGJV0dCo+ycfuLkR98zK6WX8BSQCXLUACvIPZTpKqhEMphLn+yiXUxkEOqiZZk14iIOCrqQt3ZvblNZD011uFBgaJZHvgkUcX97+DBcKDWztcET9yfmcQPmOtHFSgGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=szeredi.hu; spf=pass smtp.mailfrom=szeredi.hu; dkim=pass (1024-bit key) header.d=szeredi.hu header.i=@szeredi.hu header.b=o9VDAYZo; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=szeredi.hu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=szeredi.hu
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-a864574429aso159129166b.0
        for <linux-man@vger.kernel.org>; Thu, 22 Aug 2024 10:34:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=szeredi.hu; s=google; t=1724348052; x=1724952852; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=c4SkFUyZEvGcixofHc9OJ4bNLtK3IhozIOBpbbZR+Ac=;
        b=o9VDAYZoVRlOLmfsjkD4ztG+m27a/fSOxOeyTupva5UTUnyeMC5d0qEDwFMW53WE1K
         MkbE7nfLn2ryV2vZ6Ulh2HqyISbADlNvqGciWCJPtjfrhq9HVrxce+GlhopTYUI77JVe
         uC+O9LAON4qg8mTYP6lh0BqL57SyxpfELKe3Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724348052; x=1724952852;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=c4SkFUyZEvGcixofHc9OJ4bNLtK3IhozIOBpbbZR+Ac=;
        b=kwA+OTnc+wiFZ6J8XwAQpR2tu6k/DMdII2tXMb5Is0ybKn5JKLWAqUkm+DFsbClYYr
         uf5B5BwIxfS4kwh1Obejt4oxog/B9e8G87ZeTj40QePgNqPd+Dfo0lrYUyJETr1xrfte
         a1IG4olV3LAXq4IvE7+lVNpAAHCGlwZQYyqSVgDvmAfFnZqOPVOYTiaXkvO5DKo5RIfz
         zd3IXFX4KPY1DMd76UEdXEe6PKMCsAl7jzdvgNWlkAysgTEG6tsdpYYkTzF0zJsdLmE2
         pTBbUpi1Qria13sxCD24EiUFmJEjMJgNd6fzzb4HDoXNEiZ18tP+99L53W7suF753S+0
         wcrA==
X-Forwarded-Encrypted: i=1; AJvYcCXQjuAtusT74crvmjLK9ctJKYaqDZObFz0u91bLGd9cYSW3ZId/tROe7YO6mIzrho8GFDaNBFCklUg=@vger.kernel.org
X-Gm-Message-State: AOJu0YzlhGdl0uzMkCrnfTryYSQgpQIq62xruKSIEpAyNJXSnERAMtoL
	snjteyiggSlJVAlgEUUwZCKBI+fCx1kR5OBNVFHF4pJIC/tKeYHxefMim1B4RFfudymOPhQGsr0
	0OoMFoudMuqvb513DEzn9JgQABNGyQUIdDCTE0XqjQodC4wCojSM=
X-Google-Smtp-Source: AGHT+IGBQjV4wAiQiqrib9Su5HSQzemiaq9WzbAu7TL6sG5zCTBTXoyIEaWxAFLqvXVy7vZxDR7w85Jk1HvEw6sYufM=
X-Received: by 2002:a17:906:ee8a:b0:a86:9107:4c2f with SMTP id
 a640c23a62f3a-a8691b8c6bemr270637266b.41.1724348051714; Thu, 22 Aug 2024
 10:34:11 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1720549824.git.josef@toxicpanda.com> <2d72a44fa49f47bd7258d7efb931926b26de4004.1720549824.git.josef@toxicpanda.com>
In-Reply-To: <2d72a44fa49f47bd7258d7efb931926b26de4004.1720549824.git.josef@toxicpanda.com>
From: Miklos Szeredi <miklos@szeredi.hu>
Date: Thu, 22 Aug 2024 19:33:59 +0200
Message-ID: <CAJfpegtC7A+YXDc_U2cHg-VzwOsWp9rTkYyZwJ91923SdJqCdw@mail.gmail.com>
Subject: Re: [PATCH v6 2/2] listmount.2: New page describing the listmount syscall
To: Josef Bacik <josef@toxicpanda.com>
Cc: alx@kernel.org, linux-man@vger.kernel.org, brauner@kernel.org, 
	linux-fsdevel@vger.kernel.org, mszeredi@redhat.com, kernel-team@fb.com
Content-Type: text/plain; charset="UTF-8"

Thanks, Josef for doing the man pages.

On Tue, 9 Jul 2024 at 20:32, Josef Bacik <josef@toxicpanda.com> wrote:
> +.I req.param
> +is used to tell the kernel what mount ID to start the list from.
> +This is useful if multiple calls to
> +.BR listmount (2)
> +are required.
> +This can be set to the last mount ID returned + 1 in order to

The "+ 1" is done by the kernel, so this should be just set to the
last returned mount ID.   Also maybe explicitly mention that a value
of zero is used to start from the beginning of the list (zero is a
reserved mount ID value).

Thanks,
Miklos

