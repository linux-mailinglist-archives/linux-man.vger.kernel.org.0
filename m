Return-Path: <linux-man+bounces-2382-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ADB67A2F9B9
	for <lists+linux-man@lfdr.de>; Mon, 10 Feb 2025 21:09:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7EA3D3A5571
	for <lists+linux-man@lfdr.de>; Mon, 10 Feb 2025 20:09:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A671725C6EE;
	Mon, 10 Feb 2025 20:09:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="eFzuD7tt"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com [209.85.167.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7B5124E4A4
	for <linux-man@vger.kernel.org>; Mon, 10 Feb 2025 20:08:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739218140; cv=none; b=cXvsT5xEcSG08g42fCYSbTcacYx+xL4wfq0o27p6RvxL0g0cQI6FH5kyWEO3ZRcOX8jBUG15sVhmRMej6q4us3mkAYi/X/9tQkBV2zJGJ+qMNURvP+wMiAHnjoHt7lzRhEgOgoQljwJ8MTbaHC8igDzCDXzQNp7MmPPpFVI3V7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739218140; c=relaxed/simple;
	bh=xmlGfuTk61+uVa92b+6DfVSCsOSUh7/Q0jbKXOaH22Y=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=iHFmzGqAQ+fqEK8LalQgCbEV/14Y2suoky25qrpms0pDBPSsz1YLhcqGMnT3DyYol2xGk6W2P4KNL6X8SJhubhi0ZTRHp1fC/AiqhlbhkERXWrAbi0NlSwk1SMWyOxOJvEiqbPEucNbZFKafk6bJu0IEWqu1oUN/CTkVgwDAtpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=eFzuD7tt; arc=none smtp.client-ip=209.85.167.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-oi1-f176.google.com with SMTP id 5614622812f47-3eb6b16f1a0so1266613b6e.3
        for <linux-man@vger.kernel.org>; Mon, 10 Feb 2025 12:08:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1739218138; x=1739822938; darn=vger.kernel.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=rRzaGUeaFtJClnn+BsQPvqkzV2iEiO30XIexNz/YNto=;
        b=eFzuD7tto48MTtowSWds/8GI+EfC+Ebzoa1NS/1YYkX3Iu7Nl6x0ryReLFQKWDY82/
         sa9Iy1upmFQ7EO/U3QbGQZkrcAvfk79kot7Wj7jeNpApQ9IEEMga6Yigayv84/AV5G8k
         FXBqrLDIZXmExx7HFf0dJAqGIsiiduqbAhu2cskdfyr2i7htKc6mfivR1JSBls7z03v2
         GcGEnPJeJ6AplHHiozQnnmpGA42G2baHFmw2Hs3HPkhu8qhR6l9YgkEqGOpwYM+lVDHQ
         W3Qu4Tzu1mI43f4xeWWozZvFvPWs2nbjFpdSwKtBGkE1Uv1vUXgRu/MOgDRwKz0d0m+m
         lBqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739218138; x=1739822938;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rRzaGUeaFtJClnn+BsQPvqkzV2iEiO30XIexNz/YNto=;
        b=wUoRLW26Cv2E+22/5QEHSl2B6xYTwgRpvF+jffUJp8ddZlTjaRRYvu0TxO+9u3ufow
         sjnFB6mA0Pit26nr4u/PM3Xy8Ymn4BABrf1QgOeQdSVFMHpnyoF9kJkmoqy9bOWjpXnJ
         zWbiHh78wxMV6hLWMibGbk6raZp6sIrrHB0aU86FWgF1QQ8ZeBoD8KaZwV59lfONZLhH
         HES/uH77SWn6rzwd7SjLovbRsr8QcSLPH2fhMh76bfNDcmIAE8S8yHIfPDlVP7NMdKb9
         oSDZfsJwXR4jYq5iHhk29eY7U6mL4++km3RATpAxXLZQCVqKW7ZlQxGSc+jKCiUfS2fB
         TQwA==
X-Gm-Message-State: AOJu0YxrjtYqYti3pXjdCRD5MQPc6+RjaQGUYpWacWnw1AEAq/nIkvuo
	WTovmHd0xdZH4Q7XAAdzROlHMj3qOC6tmpfzwdjZ/yOjoKs9PUpzMo+Risp6h1ZxRO/S1QhOjf/
	ZM1pVnbfyTZZZ7/V+GqGm/qJh/HVBJ3CbJKesKVYPdJsg85j/o23jIv0=
X-Gm-Gg: ASbGncsEPgDU4iiMdV2E1McGmMDI9Hs1hrQ9OzcCx/SKGJGgEISbRtzwSzSWPxkaIuj
	KFrKzJTxVs6Pd9eXX3dvg9x0FB4U+dUEUY/ilnRWGd9gW8m0RpWd98GWxHjWCcK4DIBbUKw==
X-Google-Smtp-Source: AGHT+IF0gT5kW3xSd5iPgsuflHYPB+wVhZZm0dP5PMfb/IX3xH0gi7GS+x1fSwWdbLdi7eOAg5HrV8b4boCO79l+hq0=
X-Received: by 2002:a05:6808:3012:b0:3eb:6599:fac5 with SMTP id
 5614622812f47-3f392410f22mr9048964b6e.36.1739218137792; Mon, 10 Feb 2025
 12:08:57 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: enh <enh@google.com>
Date: Mon, 10 Feb 2025 15:08:46 -0500
X-Gm-Features: AWEUYZkm6tgvbzJKmzeSBJU0tBBmLrkC4ST7iq6ZmVSIIg1gVHyYmuNjUSXOwi0
Message-ID: <CAJgzZooL9dCC+zXXZVpntRSPtPWbHR0vXYOMrVp-tJiE=JXaaw@mail.gmail.com>
Subject: _exit.2
To: linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"

currently _exit.2 has:

STANDARDS         top
       _exit()
              POSIX.1-2008.

       _Exit()
              C11, POSIX.1-2008.

HISTORY         top
       POSIX.1-2001, SVr4, 4.3BSD.

       _Exit() was introduced by C99.

the C99 for _Exit() is correct (so the C11 is wrong), and _exit() was
in POSIX before 2008:
https://pubs.opengroup.org/onlinepubs/7908799/xsh/_exit.html --- but
then maybe i misunderstand the difference between STANDARDS and
HISTORY because i don't really see why both exist here. is STANDARDS
meant to be the _current_ standards? (in which case it's still wrong,
and should be C23?)

