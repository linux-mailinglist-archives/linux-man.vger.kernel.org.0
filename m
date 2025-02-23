Return-Path: <linux-man+bounces-2502-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C451AA40D92
	for <lists+linux-man@lfdr.de>; Sun, 23 Feb 2025 10:14:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F004B188F606
	for <lists+linux-man@lfdr.de>; Sun, 23 Feb 2025 09:14:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9EEB1FF60F;
	Sun, 23 Feb 2025 09:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="b7Fryez8"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E94D92F3B
	for <linux-man@vger.kernel.org>; Sun, 23 Feb 2025 09:13:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740302034; cv=none; b=LUHgwfK/lLxpaBHguBUgViF+pGs6ix9JN9i6FgMoDcRXVDNX2TOP7AlceuKuxvTJNyP5Q14nvAzV/Z+J0L+oif7B8RxOOpfoiBLzK549Z8YZpMFpINjoVJ5v9pVjwinNi/xB6A6qBNp6cl/ZsrOSkRRJK18QuNSQ9XvjEao9GK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740302034; c=relaxed/simple;
	bh=zm24JoX1NccGGXOTy3cdbfgcOwl0WBchTYIoN118AE4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=eg5b7h6md81PZ8/FB9Kj7ozgJ1qv/ACsEj2OAKgQcZ29Wbm3OSGklqDa0y98a08dru7W4Jf88/KmZ8rxyDQdiOS9p0/AykurWfyjcEjJUM2EPgh2EenipDk/ycU5YZ4pPjSVofELxIrMajYakRueyEA55grLXCcswWR3g0+dxQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=b7Fryez8; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-38f5fc33602so1865255f8f.0
        for <linux-man@vger.kernel.org>; Sun, 23 Feb 2025 01:13:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740302031; x=1740906831; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=dt28dB/fRUmzpL6wnmUCoaVWhq9+1z0bqrbFHou0m3Y=;
        b=b7Fryez8HIUVS4okzVQOj/91Qkr664Qa5coht+o/42I8+OfAm8Amx5zRju9CxU6A0b
         oEwT0bRMRDyJWL4glXN5+79Ns2mLR6tvNZA395GZ41ZbHaRhjZ5w686DSE9WKCQ4r88J
         pUknVIzih3Yli0kQaztfFrwzNBx4gd0sxoglY0jwR6/l8aEI11uanT9utQ0ZRkvBNs68
         IqZzQadXRAJnrKzYXRH41leEn/zDK57f26jzpTyJHM541+bff6FQVvexWsZTxrgtmkoo
         LwSs7UFC7aCljGOi5j8qIzUGnVDII4GxukacZ5MGbC0iSnGeAgwWpl2VdOxesXIjyTPa
         LObg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740302031; x=1740906831;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dt28dB/fRUmzpL6wnmUCoaVWhq9+1z0bqrbFHou0m3Y=;
        b=TEf3UYdM7cDfuhrsZIHKtBRsrMu3r7fQwzHBS2JE3wfA+BPvU1Sgw/+jbRjkstaoJU
         hJKQ+SIO9+7QKmoxM4O0v4gHZsN+iaz3ysGaYdgxRdRJMfoyP39CuCRgDvjveLAwW+k7
         EW/4Cik2H6bUFy66OMwR6I87Z2zf7m822nqnOen+hNDbaeV5ZA9KMhkoOU9QhpbQSIpk
         dPgfpx4S0LG0HXJ5EhLDqr5qc2VJCtfcGEilhgOD1JJtyBh/EtMOMFdH6I4Kma0UNXxP
         akjFp1SqWdZQ4mVtcjGYxpGg8lAu+Rq5b5oGYGUlTDiX0jMj9UylXLIZR+Yw4xGCpXwf
         pprg==
X-Gm-Message-State: AOJu0YwiyXVL+C/nvm9VNE9skENuUjD1gF1HYeFr+ugoYLu5K0usNA3/
	PXYHXEUHHBXNFsMTNEgyIkffBZTVFHNwOi/Q0cR0e1Pn9MOGjYVU
X-Gm-Gg: ASbGncu0ULoFSnk/rNuXpJZYHdULjvNmprwsPYIiLv1XzRRfKTPQXcnAwpXk6zoy/Hb
	wmQvKepSbcvmMKf35y+DquvJuJTB8Brk15JufzOc7CDay/wzcEPkBDv0pLmZnDi7v+GIskGK9es
	UBOdBMJcm0gK8i58L0JQ7FnbbcbWOQbyMAz9TBZo5qftDujuItfz0N+B/tKBjh6VgSkznLjzN/S
	mo8eWJ68Z5yZ8/oPJd3Su7HvvZPT7dlyO0RfbjRVwhXbBuWh30xtImUEn73I3uAW2z+IdKG7LFM
	7tEQwuyR0RQuuRk45kE7NpU=
X-Google-Smtp-Source: AGHT+IGNhWfCl5eWDo+92Tyxe0x+4/AgleYwdsohSOG5KcznQxJ0bmBdGW8WDTktV+5c5axVPyy7/A==
X-Received: by 2002:a05:6000:1f87:b0:38d:ae4e:2267 with SMTP id ffacd0b85a97d-38f6f3cd3cbmr7259182f8f.11.1740302030830;
        Sun, 23 Feb 2025 01:13:50 -0800 (PST)
Received: from localhost ([2a02:168:59f0:1:b0ab:dd5e:5c82:86b0])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-38f25914d73sm28891970f8f.54.2025.02.23.01.13.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Feb 2025 01:13:50 -0800 (PST)
From: =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To: Alejandro Colomar <alx.manpages@gmail.com>
Cc: linux-man@vger.kernel.org,
	Jared Finder <jared@finder.org>,
	=?UTF-8?q?Hanno=20B=C3=B6ck?= <hanno@hboeck.de>,
	Jann Horn <jannh@google.com>,
	Jiri Slaby <jirislaby@kernel.org>,
	jwilk@jwilk.net,
	=?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
Subject: [PATCH man 0/1] TIOCLINUX.2const: Document TIOCL_SETSEL selection modes
Date: Sun, 23 Feb 2025 10:13:41 +0100
Message-ID: <20250223091342.35523-1-gnoack3000@gmail.com>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi!

For context:

TIOCLINUX's TIOCL_SETSEL sub-code has another layer of sub-operations,
called "selection modes" (even though not all of them actually deal
with the mouse selection).

Going forward, the CAP_SYS_ADMIN requirement will be different for
some of these selection modes, which promted me to at least list the
different selection modes with a short description.  I am leaving
CAP_SYS_ADMIN documentation as it is for now and will send another
patch once these semantics are finalized [1].

Thanks,
–Günther

[1] https://lore.kernel.org/all/20250221.0a947528d8f3@gnoack.org/

Günther Noack (1):
  TIOCLINUX.2const: Document TIOCL_SETSEL selection modes

 man/man2const/TIOCLINUX.2const | 48 ++++++++++++++++++++++++++++++----
 1 file changed, 43 insertions(+), 5 deletions(-)

-- 
2.48.1


