Return-Path: <linux-man+bounces-489-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DD1A886D6A4
	for <lists+linux-man@lfdr.de>; Thu, 29 Feb 2024 23:12:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 742C51F23A2F
	for <lists+linux-man@lfdr.de>; Thu, 29 Feb 2024 22:12:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C30046D53A;
	Thu, 29 Feb 2024 22:12:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="b00DbR1X"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 324E46D522
	for <linux-man@vger.kernel.org>; Thu, 29 Feb 2024 22:12:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709244746; cv=none; b=uN5wkLxWVmYr4CdRN9kb88MrW3nGVluXCYPODlsJOEMaRh6mI2O9891CEd8S43+VY88O1gB8znukJ6q/zRdpRXnQywFNeQFvaWoM440IDww5RpYTiJpU6XTj4xWEE32V9ao6a5HYpvK115VM6EmzUCBeTxdLdsczFyxGuE3kf0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709244746; c=relaxed/simple;
	bh=gDyy6h7qMstBKd8AwbhwbN6ido0DjBM6L+G0BH44m5k=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=IELg2+W281pPqEBQn0BqDPKltqMFLlBZSirXvz1SwUSSbAA4MgpQiOQxchLlndWgp+G4z5kuejryCTODjJJXh3lNRuTvB+sw+x3MmbWIWBO0Woe/3pSBb+l1Ej0FZG5NkAZCl45FP3zPlyKTZJC3RonBjJ8kyiDnOdAqfRCOPdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=b00DbR1X; arc=none smtp.client-ip=209.85.219.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qv1-f41.google.com with SMTP id 6a1803df08f44-68f5cdca7a3so19536336d6.1
        for <linux-man@vger.kernel.org>; Thu, 29 Feb 2024 14:12:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1709244744; x=1709849544; darn=vger.kernel.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=gDyy6h7qMstBKd8AwbhwbN6ido0DjBM6L+G0BH44m5k=;
        b=b00DbR1XZr/RW19KLs02FjmcY2D3LdeIotFvs505qBwQrlKXgvk8k+KNgyc4F0kYAf
         qsPJu5rqSbKsqdql/YLhNX9/jaOXwh4AM4HLqJ6Dmbjv0T51ilqP2LO26ukJCkzxlgGy
         vjQYPzYGhwdU87l7nXJj6qYQsMl/Y+Cy9urUUXs439EHdRDfgqyd8xzddV3WJ+Jo3YJI
         vNn44ZN/3DHSyJU0yM5qHFwsdDGuJcW06nedeY43n1RHqLLXjvfl3lnOD2Hgko5UdS/r
         dHHumY56Anvw2ZH5qr8Zejww841rjm7OJwSW1LYJWn5WCcmnJ3cGtGDoJREL33IWBUlI
         TDbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709244744; x=1709849544;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gDyy6h7qMstBKd8AwbhwbN6ido0DjBM6L+G0BH44m5k=;
        b=LagYwqP2HwHXWUB3hub4TggIh7FA16F6GSN0+0NetO3VR3eba84KkjOUGPT1l6c6Ia
         j5qf4nrHr4pW9lMfDPEki842eP1VTvNwvtlg2Z3MMlEY+rvBPWLVDVMeFw9AiR7b/x2w
         kGf0wHOAzBcp8XDZa7VTnjKkZbDMvgdMPjHEiWGIvHrGIQDEDWi7hTks7FtDZlTe/0Xa
         OK7z0eCWPdCWHqTOf2RiPX4axVsfzRoIwtoEhIRm+gnNBAfhSTVKhS/TBgkhYqSxCrNH
         is6SueCO0Mnju8Sz5VPtnfV/l5orLUYDPzGCgvbyhSQ4FPpw9jGcQ3UqouMT1Z2GX/NP
         jkBA==
X-Gm-Message-State: AOJu0YweBYmupYSlpzxm+Rz/CgvcQo2IHRpLqUtVc0hnb6BQP95oMKxJ
	gE01xg8E1E2xC+/ME/M1mJKHQu+t3mqht3+z1BgOHvWf3v+X07a9MQNjT2/4NOki9ybV4Z8FaIq
	4JTqOXAqrLmKPphsFcJbegEPs9bfJuT8/TCTZhT3P+bWJ7qcQRPbV
X-Google-Smtp-Source: AGHT+IEoGpYC/n0A8+Od/tqVKmM806PS21KuuxuVrgTLLrqUjl2EBblkSQJjzYvuzsY9VMRoVZ01kxD1XL2BnVcKRbU=
X-Received: by 2002:ad4:58b0:0:b0:690:561c:c075 with SMTP id
 ea16-20020ad458b0000000b00690561cc075mr83371qvb.22.1709244743875; Thu, 29 Feb
 2024 14:12:23 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: enh <enh@google.com>
Date: Thu, 29 Feb 2024 14:12:12 -0800
Message-ID: <CAJgzZopUo5eHBBqJBnsw9AnuDVypzf7GM9vyK5a-btqsZ6Sevg@mail.gmail.com>
Subject: _Fork()
To: linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"

(apologies for the post without a patch but...)

fyi, i noticed that there's no reference to _Fork() anywhere. i'd send
a patch, but given that vfork() has a page to itself, i'm assuming
just adding a paragraph to fork(2) isn't the plan?

