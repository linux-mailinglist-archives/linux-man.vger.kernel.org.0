Return-Path: <linux-man+bounces-2601-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A4D7A634C2
	for <lists+linux-man@lfdr.de>; Sun, 16 Mar 2025 10:06:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B5DC53AEA0A
	for <lists+linux-man@lfdr.de>; Sun, 16 Mar 2025 09:06:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04B63189916;
	Sun, 16 Mar 2025 09:06:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bpa6UEyK"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38E23157E99
	for <linux-man@vger.kernel.org>; Sun, 16 Mar 2025 09:06:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742115991; cv=none; b=O6IiCbhfO9fMN9byudRQnHaPv11iJ6MAzcUveHE89pGYWQFNoX7/edjdHye0tt4MeCjOlWvcvgmhlL+1WlcwZCxxX2M2uikd1o5qFNe4wk2L6YXbtgiKYDYfY0oNmpXPdwXS0PApi1y94I7ZWPejwQjc8nqdIYci7G+lEPYMVfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742115991; c=relaxed/simple;
	bh=+Kfir4XIJGk16qC6TCzMGI6LgefaQR9vQMes0J1nQMI=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Cc:Content-Type; b=OvYG20A1upSO3KpYL1ehvdEUiUthkdBJd/xfuOvhzOg3LygoQJwBAfFCXOkC1RZUo78S3qE88nhkOgqpWT+gsvFzuU+EbyU64fp0NTRK09ZVxCCALgHPoCFk3dJeTDgj7BwNZO6XJCM/YjrvM2WoFwY0xDULp/kWXNSpKdauK3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bpa6UEyK; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-5dca468c5e4so5941157a12.1
        for <linux-man@vger.kernel.org>; Sun, 16 Mar 2025 02:06:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742115988; x=1742720788; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=+Kfir4XIJGk16qC6TCzMGI6LgefaQR9vQMes0J1nQMI=;
        b=bpa6UEyKRqotoDfjC9fDC9+Da0JTxV9biW43zMXWh/daq8W0i/x9cVtBoihTKOIyxd
         hGC3JBZXTzoDUhPFIHe8vnf3K6HNNCY4u9wXqAY5gmoBSQjnHZ4bXs2VsHgzhkscSynC
         qftTlEYYJbKP3TmsBPcLoYyLS8FJYBMHnfbEbMuXXefrvp3UUzIIPk/GqsI2fH0whroT
         I8Kze/fONtzXTa233bmzaAbggKDtn6mpszt0KbTOBhLYBkWgM7UrN0oSG0ZW3TV5EV7o
         BqnnDHLyJmONChBoq2hzKR8HnLtVtZOb4XE7PmPcUZSFgdHAUXX4xB4VavijoP9PvJRu
         TB9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742115988; x=1742720788;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+Kfir4XIJGk16qC6TCzMGI6LgefaQR9vQMes0J1nQMI=;
        b=N2RkP3JyKsRj9GnPP+M1jha0uZpQKBe++wKvs67lKy83qOIXMfAN1fsA7W4arDTe6Z
         JaH7VM2CDA5RUFz0WIKAHiMoQnE7EGm+mEg0YOvGyp8AFet6dXGcU/p28hyzARJqwupc
         p0yBMJ/DrD5/5iAx9ALKzzf+bKCVbVMXaAWyILvQ5e23t/WMWgw5Re9vaiy+ZO49niN2
         CKrNuikWRtazWNkF59586hPz/FcAwGW/q/FQ9QCgB5udVIuedKf5R8Icygl5C2eWamiB
         k5u4f8riR4YmzBc5EeorSVRqi55rkHwUd45XqEZMa37T3XPzv9S9bjEk9Ek44/jUUJEc
         SlSA==
X-Gm-Message-State: AOJu0YySUUC6zq3tGrm6tdQ9GhB4xoq2WWU8tLhZPpmEekai1h9G8KmN
	TGHHlB/R+cvmV4Ujfge/mAIDpFxDSE1dqRf6EPaQDSnmJlcVr9iC8hR3k+CIaB09pqrOIB+LFJM
	WODTKTuYpJYRmfusCnslSUm5zDEEApcLQ
X-Gm-Gg: ASbGnctaUA49H0ONeYOPecN8W7YPGvoRuQK9BpPX7rdcuQ1nqmZ/Xy/mGBRednTSOUD
	zeoPn1M7b/w3vg1FrH79t4iGu5E0L1wf+S3ep2yPDD/hI3BRjts+2M5gADqUj5ofZy9DCrYi8Ny
	EZ2WzOf778ordPHIm24YRE5cT3E+Q=
X-Google-Smtp-Source: AGHT+IFHC28rXYYs83XqanJaOg8YVzEsZwH52TW9sF+msqC/6oSySNiQEglalgZpYxx0SjWQe8dZSAxKe5ZZxQXYu/8=
X-Received: by 2002:a05:6402:84d:b0:5e6:4ac8:c361 with SMTP id
 4fb4d7f45d1cf-5e8a0c10260mr9418012a12.28.1742115988203; Sun, 16 Mar 2025
 02:06:28 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Kang-Che Sung <explorer09@gmail.com>
Date: Sun, 16 Mar 2025 17:06:17 +0800
X-Gm-Features: AQ5f1Jq0z_uGjsgE8iAYYKSBykW-P1W8pFbw3Mt4Cjpr_JsYXWX8OFY56l2otlc
Message-ID: <CADDzAfM1HVMkyQY-zhv81NKS4X-neCTGETQec-f9X4acgpZApw@mail.gmail.com>
Subject: [PATCH 0/2] wctomb(3) and wcrtomb(3) man page updates
To: alx@kernel.org
Cc: linux-man@vger.kernel.org, libc-alpha@sourceware.org
Content-Type: text/plain; charset="UTF-8"

Hi Alejandro,

I have some small corrections to the man pages wctomb(3) and
wcrtomb(3), and I hope the man page maintainers review them.

This is the first time I tried patching the man pages.

Thank you.

Kang-Che Sung

* man/man3/wctomb.3: Rewording to MB_CUR_MAX requirement
* man/man3/wcrtomb.3: Document MB_CUR_MAX length
 requirement

