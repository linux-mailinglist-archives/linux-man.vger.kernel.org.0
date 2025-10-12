Return-Path: <linux-man+bounces-4102-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id CF880BD00C3
	for <lists+linux-man@lfdr.de>; Sun, 12 Oct 2025 11:41:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 35A6B3484CA
	for <lists+linux-man@lfdr.de>; Sun, 12 Oct 2025 09:41:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC34925BEFD;
	Sun, 12 Oct 2025 09:40:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="G1XFtdMy"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yx1-f46.google.com (mail-yx1-f46.google.com [74.125.224.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BA1325A2B4
	for <linux-man@vger.kernel.org>; Sun, 12 Oct 2025 09:40:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760262053; cv=none; b=Ockalzq/bXEDuX7OVEVpQ573svd7tsA47JokYYMtoyySRzl720efXcDNJxJ0uA1JoeaCiZeQ3YYPIXTchOYm5Tz9QadGW3RnzXmsJcLS8Hn7zsA10J6v/3+tiz9WCHVTPvIoylgobgNN07OENY/Fbaj5bK2/VuCUVt7vT3axsHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760262053; c=relaxed/simple;
	bh=z7VfEU1r/Dsm5nX9xRER4JSx0tzCPxyJY1p/Ak7It8c=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FRG+Uf9NvVPyW2wxYPaLpwJNYAPEyxnJA5PGBH4I4jpJPT2AO8cQxvgdntkxr+QZdJxzDre0R9b3kSX16bB1ddXPdi1IkIoEKCWh4CJhXzdefaD/5C0iMa72V1KsF27J+i1y2gI4PTHr6njl+xguLLa0lpPwJnPTZakEwu34vvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=G1XFtdMy; arc=none smtp.client-ip=74.125.224.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f46.google.com with SMTP id 956f58d0204a3-63bcfcb800aso3617910d50.0
        for <linux-man@vger.kernel.org>; Sun, 12 Oct 2025 02:40:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760262051; x=1760866851; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=z7VfEU1r/Dsm5nX9xRER4JSx0tzCPxyJY1p/Ak7It8c=;
        b=G1XFtdMyksR1fYnplenpnBJg5rBXUydVHsla0P6iJNa24abdMdwoDlXEFMl4DTXxuK
         vOM42xlKw9o8u6TNMVufuifNrKtXHoRLrptjjBKV19CJxnSFaJ6fdDNa8uIELOLlT+qa
         AMxajuq51KVU2BjmcldJ85GiyPhC8xO/Cm/wxN5jR2kC9xWPJ4o7nLZrfH280OcmLGTr
         pHmt4+S0u2p2SkDh/aoFiVxRuTy2mmA2FLzaxtcZfc0R4x8ymELgZwZ8OixTxnPrnfaA
         kTqVrdbWrlaB/zrl+kf+AK/mmv5TMdaaLLFQ+N42Waj8bO8Djb4j29Bjb/cF0565bPUK
         Kj0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760262051; x=1760866851;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=z7VfEU1r/Dsm5nX9xRER4JSx0tzCPxyJY1p/Ak7It8c=;
        b=tuJq+DwNnYDFN7tZxqN8jqkeAngB5Ez7Y+6EdFg0U/8g0DfCCBWUQqb/v92batae9j
         seIzloTQ/69ScL4bRuP9MCfjSKaXuj76J4sBuwbUhJp5P6db3zOh59atiAS8TGkDAQmj
         UOFk8pVoZFV6Ke7y/fkv+yu0qOZAhvukXw3Gs2h3vBE6wB4XJ7+p/Zk8+mk8sq5cAtYh
         lj+PDWIQ+lKGgyHcLKVv9RXiJhVcUCCKHkXsxzd2QXUfQcSQMVQdkAgzDunlLc7l+EJq
         Ub7eyXH1IiaqqOyI1iLUo0OX8+V3SqbdVO7YL9OX4ahDHf2LEClKrtPLtu1rA0DSBQmg
         LZPQ==
X-Forwarded-Encrypted: i=1; AJvYcCXhprszweJDzdzC/EWAaa3G1uq7bi/pEiTvYTw14c6scMSXnAYUtUxF3VJRa73KnrFJilfKx+EeBvo=@vger.kernel.org
X-Gm-Message-State: AOJu0YwxZYtd7YX12O/kfK6nBNy4JGRm6o/y3xWPcH75pr0hwyo6lKCs
	zPrm9ZaI+bhX63mei+ZGAKjyPimt2Pp7JDseS4MkRt7WdN8+KvyR46kUWfAbjf9FYW07FefQIQV
	U8M5UTZn0N5JxDxiDvWvGaO1G6KTJHRIccg==
X-Gm-Gg: ASbGncumAtPKerT0Jj6nQSaDztkxbOFvmwn73zTAGXbmu5l06z+f4LLQfyXkeL+8oZl
	nK4CSfsX2+glXd1jniOxgRw41lmfdrLw7wy1IbcQLc+Hygo75Pv5Yzh0UZts13ekivQTghLAI7Y
	4l2gQ9soO8QIHmE2ouJFUpGXLYpXeRi8OUiO3U8/h18QRenaeQZqpSUDHRV9XqRb5mUvv+LRPfc
	W67aQiFhfd0iTvp7QtyTYf7PZ/zkaZYMdB6RPhj18I/di1X8R5mzbwc62F4YU5NDsqGQTg=
X-Google-Smtp-Source: AGHT+IGHFLSueRL03cNaK2/yCt+aziBSAitQz5o5MUcbkq+Q30p3V5Ti/erI1KZyKhu3zJtqr6MsmGi4UpMb9vOyMVI=
X-Received: by 2002:a53:b082:0:b0:632:ed6b:754 with SMTP id
 956f58d0204a3-63ccb825bc0mr11483728d50.9.1760262050847; Sun, 12 Oct 2025
 02:40:50 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAMw=ZnQki4YR24CfYJMAEWEAQ63yYer-YzSAeH+xFA-fNth-XQ@mail.gmail.com>
 <20251012061438.283584-1-safinaskar@gmail.com>
In-Reply-To: <20251012061438.283584-1-safinaskar@gmail.com>
From: Luca Boccassi <luca.boccassi@gmail.com>
Date: Sun, 12 Oct 2025 10:40:39 +0100
X-Gm-Features: AS18NWBvP1QrZ3o2ndrItBzM4K3K3jc8q5I7qUu-9SsQvSSAU0AmLtP7SyKdnS0
Message-ID: <CAMw=ZnSBMpQsuTu9Gv7T3JhrBQMgJQxhR7OP9H_cuF=St=SeMg@mail.gmail.com>
Subject: Re: [PATCH] man/man2/move_mount.2: document EINVAL on multiple instances
To: Askar Safin <safinaskar@gmail.com>
Cc: alx@kernel.org, brauner@kernel.org, cyphar@cyphar.com, 
	linux-fsdevel@vger.kernel.org, linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Sun, 12 Oct 2025 at 07:14, Askar Safin <safinaskar@gmail.com> wrote:
>
> Luca Boccassi <luca.boccassi@gmail.com>:
> > Almost - the use case is that I prep an image as a detached mount, and
> > then I want to apply it multiple times, without having to reopen it
> > again and again. If I just do 'move_mount()' multiple times, the
> > second one returns EINVAL. From 6.15, I can do open_tree with
> > OPEN_TREE_CLONE before applying with move_mount, and everything works.
>
> This sounds like a bug. Please, give all reproduction steps. Both for
> EINVAL and for non-working open_tree before 6.15. I want to reproduce it.

IIRC Christian said this was working as intended? Just fsmount() to
create a detached mount, and then try to apply it multiple times with
multiple move_mount(), and the second and subsequent ones will fail
with EINVAL

