Return-Path: <linux-man+bounces-2415-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FAAFA3311D
	for <lists+linux-man@lfdr.de>; Wed, 12 Feb 2025 21:56:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1A831168284
	for <lists+linux-man@lfdr.de>; Wed, 12 Feb 2025 20:56:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1523F201258;
	Wed, 12 Feb 2025 20:56:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="d1tMU4iF"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A9C1FF5EF
	for <linux-man@vger.kernel.org>; Wed, 12 Feb 2025 20:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739393785; cv=none; b=NfEVMqeiOYGpaIg09C9b16Mn2KQf91vBcJ1MPbO4AWRVYX3gTkc8/Pux0dsrO5fPN9d9345TzETmHbGGcJP/vFYboXaOzmm4N9nWZlHEqL5noD9xXDBYE1eHC9KR3RcC0urh+iZogeYDrh+uEV+TJ39ZIx8HdAbWfwldzKVMNTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739393785; c=relaxed/simple;
	bh=3F2jWt57nbBxpTDj12tlaDwuw4G7KZ8ypyx+RvUi1t0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=E1Oz/5sJVroOwnJyI3CgS2sxi4VpStFDm++ybPaLj5nmWC+zyKmWsgN+/m7o23SsnzUFoyPrAvoZy9RVidjJJAEFVw2RwIs7OdhS0u06t5qcTKTwzwwK8bFbfK7rmSl6VkKuVEU3dCowpNR0PLalWkaBRAQDeXH4202RfxlvxyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=d1tMU4iF; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-43955067383so1187875e9.0
        for <linux-man@vger.kernel.org>; Wed, 12 Feb 2025 12:56:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739393782; x=1739998582; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=23YrBZMaSmab9oFmqYB+VqSWnmM/OKVoKbLOFo0Wjzg=;
        b=d1tMU4iFxE79Rsnz3QNdGEhFnk6BtyTiSs+FqSjXP4KnegDBBnvZFgX4vRdPrQCe+x
         BVGTJIaf6N8gBTRHkIMMcUxSuGxJj2BfxMYToaU5r0IetDTghiS64ugRtfEyTCUfZLrh
         0L5mn+q7cvzM54esWKhqU0pshxUfooI4E7qjuN3YHh/hmSXeFIPzEf28VWbXOfxqwxtH
         v6pXODXpc/XbInYUtTWApJS281dBUJcsNmknL31JDWChyVuz7Dojx4rpkiNgldS7ebmS
         Q+I46ttJLwpAo0G769WSLeOBPD3tmTZLrcL2dCrbCEnldsOispCMIyPLHZ38C1xaebQd
         xSdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739393782; x=1739998582;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=23YrBZMaSmab9oFmqYB+VqSWnmM/OKVoKbLOFo0Wjzg=;
        b=efeSKJriUrUyzy/MaK1MVKFQnFydenad7PJAYZ1ueGGgWHH6sw2YXDWw0iPLINmGm8
         B8nNkiIquW5tV57mfJTT7VZpnqihvJPYDPKZASMp07igY5Jk06Q+sAHxokJq6qE3fVQ6
         abNZGbxojBPhuYaEx+6jgI5s4UJxs2nv3ISxjW4SXaUuOq5yJG5YfURYt6qNji3vf/6C
         7fwa/KlDfgyaXEylNE5YZiz4zWVnWSDksx82FX0uKthMIsw34YDy3+m3EcGg0WO4XGtF
         Kg54LvYroDx4PH4oC0eL2+2k/JbcpGOKmXUqCEIUD5rxQVqJ23ZUsip/pqfBmGlqpLEb
         GsUg==
X-Forwarded-Encrypted: i=1; AJvYcCVVBLCPG+sgHw6sMB8hAbIJwKqRv6HNmjyJvTXBkwmZliJmWx8LrPshg+BaP0YRKhhU6VDeARdZ8oI=@vger.kernel.org
X-Gm-Message-State: AOJu0YyOvOU8fxHeOmCwx1tgBwNqoc1+khIMnn30whimUCLuio5Am0PY
	oXl4cFEpqbMyhlUDYCIHG8tX5xPz0MDzC/ZrAXR+rB2um1+YsKpAx5wGicQ=
X-Gm-Gg: ASbGnct3M5uUwuygBGtFlDLDXeERqceFQtMYCT233ofBJH87tOydnqyK3A+UJiXep/H
	wNjgcvc0YM2b86uYG2ogPwflv+KoFvcfVlkp5WVc8WjX2y36Kcih+OXzd8QTUJgi8/yjX5XZHYm
	Iv6PaFz14D0kLJyv3gqdn7Mfi/xfLl7tJEtTuJvuu8zZsHIWWqln2AS2GppdvnbGR3q2SGCzmdj
	xl1lqZlmPohfcBhyPUEc3zKx4XTa3FPcOADbteyU9R8sCUqd6PBTxMj3ioEldLJQV2Zv0riBM4q
	kqmb2yEShtTBhw==
X-Google-Smtp-Source: AGHT+IEfLSCWRg0TDigZXYE4yJVxZJPaEcYoE6OliQCufvnyuNyPPwSCddfYEOtTzaGiaf6Eb2ZbBw==
X-Received: by 2002:a05:6000:10c5:b0:38d:e34f:6aa4 with SMTP id ffacd0b85a97d-38dea604847mr3436417f8f.47.1739393782282;
        Wed, 12 Feb 2025 12:56:22 -0800 (PST)
Received: from Amit-PC. ([176.231.106.129])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4395a053e42sm30032955e9.15.2025.02.12.12.56.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Feb 2025 12:56:21 -0800 (PST)
Date: Wed, 12 Feb 2025 22:56:20 +0200
From: Amit Pinhas <amitpinhass@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Amit Pinhas <amitpinhass@gmail.com>, linux-man@vger.kernel.org
Subject: [PATCH v4 1/1] man/man2/kill.2: Wording issue in kill(2) with sig=0
Message-ID: <a4fa37e0fc89a3c99982ace3fe381991ebe85b00.1739393685.git.amitpinhass@gmail.com>
References: <cover.1739393685.git.amitpinhass@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1739393685.git.amitpinhass@gmail.com>
X-Mailer: git-send-email 2.43.0

The fix was found from the relevant man page itself, as it had a wording
issue regarding the return value when sig=0.

Reported-by: Amit Pinhas <amitpinhass@gmail.com>
Acked-by: Alejandro Colomar <alx@kernel.org>
Signed-off-by: Amit Pinhas <amitpinhass@gmail.com>
---
 man/man2/kill.2 | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man/man2/kill.2 b/man/man2/kill.2
index 96468622e..9d3a7411e 100644
--- a/man/man2/kill.2
+++ b/man/man2/kill.2
@@ -79,7 +79,9 @@ .SH DESCRIPTION
 processes belong to the same session.
 (Historically, the rules were different; see HISTORY.)
 .SH RETURN VALUE
-On success (at least one signal was sent), zero is returned.
+On success, zero is returned.
+If signals were sent to a process group,
+success means that at least one signal was delivered.
 On error, \-1 is returned, and
 .I errno
 is set to indicate the error.
-- 
2.43.0


