Return-Path: <linux-man+bounces-1472-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BEBA5931C7C
	for <lists+linux-man@lfdr.de>; Mon, 15 Jul 2024 23:14:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4EE1A281A3B
	for <lists+linux-man@lfdr.de>; Mon, 15 Jul 2024 21:14:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE27013C660;
	Mon, 15 Jul 2024 21:14:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IydZU0Hy"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C591C15B
	for <linux-man@vger.kernel.org>; Mon, 15 Jul 2024 21:14:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721078078; cv=none; b=pvAl+9RktzYekWc5E5oqdDADpcDHAwiE7PyZWG61z5odHTF8T+E1jaHSCbYv2EBequvwcWL+PHtW5AGY/m358m3NHVE5d4VDbkZYT7sb7VQDFschqlqY2KLPXgXHIyX3U7u6dsiImjCoUJ3QKiOc3p+RdFu8zaX8xYIqV5g+nRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721078078; c=relaxed/simple;
	bh=+jQI+UnAn/OsuUOm3VMFnkt+nB+uI2JUGyuyFCCtsEU=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Cc:Content-Type; b=a8qBoM+5KFw1eZBvnYBpiqXp6CNxYm3h8pQMNSVCGW6bFwwU4mDCbA4Ihs4DuuRDe18oIb9HnTAISjCxvqIwFxkYNd54MSsh8xBcjVaLkCkBlCLrd8DxUZewNmS1n/gy1um9DERNa/5qH01cJRBiu8A9vCZjhbSjAxHa7QNHboc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IydZU0Hy; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-3678f36f154so2862091f8f.2
        for <linux-man@vger.kernel.org>; Mon, 15 Jul 2024 14:14:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1721078075; x=1721682875; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=XuzbbJ8ax4635lcDLMJcemshLQo639aTTyhjiHzCR5U=;
        b=IydZU0HyPKdLvZkQO6xn4Zq43z5bL2oBFL8FcleJiCPFzXVzhvso3YC4wNDb7rhZlh
         HIvPI/jLy0e7b2yfoe7kiFXhU7yRuI/gz5Zq0SNcxTEK1WuQzizUdjx+QBo9tLPBvlsK
         3+4hPeQN15bWeCQUPh0MIZWVr4OheY7FGN6gWc2NKo6itGh7u/8JOpDKoOZ1ne0VGJfP
         9xIHtElrg4RtpNb31bP6WBlYtykSWp2LO7Mq9BHbfZrQs6YGAR7BWdhwkoyWw3UM7/ru
         zbzlYdWFQ+9kWvl5TPKBaA8J6FjLLNrMC4PaJQGpG3OJFRiPRpBd1XYT0Y1wvBEr2NVg
         MAHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721078075; x=1721682875;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XuzbbJ8ax4635lcDLMJcemshLQo639aTTyhjiHzCR5U=;
        b=hqcw/shS7e4AlrHIItNdZHHsRkY2zUX6ZMt7LcRzRUtCb2zkpr1auVkOlB79x+zz45
         l1SiOymmhOqHdbR+C+Yv3UsqSr8oEoqlIZJLnC8OjonpuYdHZleuWFw8CRBzKmTZF3Wv
         zNFF53Q2EjGR5aCzk6s4+7oHv+3C4tnIf7CWg8yEXzt/yf6d4twLzJg53rkmXBOUY8zE
         u771XCxKiTv46dli+9nXCkLW3PCh3xkjXdxzR8lvZDYoxFZtp43p3fi+m/LVPumyGIWX
         v1guzQcD3h0sZsxLHe+Zr9cqhieuKovkJe9AI5JEywJ85Vms8OJbsbkT3tJ2csJh7fiW
         SVxg==
X-Gm-Message-State: AOJu0YyKCTcyYZIwNRxkBcy6D3lj30QGdTKDmglBjjipjfJG+y35qTo7
	lTti7PyS/fYoJ/sEiWWw0vaXRT5cAhF52mDwWWggtMedxwyJOe4sJHXM8o71TmeOQVWa0FxWFCS
	vLYt4nsEmk1G8mrBPdDnR1o4ropU=
X-Google-Smtp-Source: AGHT+IEst4a4wMR+4UZ7ahho30WRNcT7gtVqGqvj2yotMuVqJZ4txSmXZhLe+tQl6/rJ7ZTX9GXQkb2OUFStotRyrqc=
X-Received: by 2002:adf:e255:0:b0:368:5d0:edfc with SMTP id
 ffacd0b85a97d-3682631525emr45453f8f.59.1721078075228; Mon, 15 Jul 2024
 14:14:35 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Keith Thompson <Keith.S.Thompson@gmail.com>
Date: Mon, 15 Jul 2024 14:14:23 -0700
Message-ID: <CAAHpriMy1NTcTTas9saESMZbsrzdUhrxTEKG=R-HXX4Vo2Dq7w@mail.gmail.com>
Subject: Ambiguity in memccpy() description, with patch
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Keith Thompson <Keith.S.Thompson@gmail.com>
Content-Type: text/plain; charset="UTF-8"

The current description in the memccpy.3 man page:

       The memccpy() function copies no more than n bytes from memory
area src to memory area dest, stopping when the character c is found.

       If the memory areas overlap, the results are undefined.

doesn't clearly say whether the final character c is copied or not. (It is.)

This patch copies the description from POSIX
https://pubs.opengroup.org/onlinepubs/9699919799/functions/memccpy.html
with the parameter names and added paragraph break retained from the
current version. The updated description is:

       The memccpy() function copies bytes from memory area src into
dest, stopping after the first occurrence of byte c (converted to an
unsigned char) is copied, or after n bytes are copied, whichever comes
first.

       If copying takes place between objects that overlap, the
behavior is undefined.

I have not (yet) checked whether there are similar ambiguities in
other man pages.

Patch follows:

diff --git man/man3/memccpy.3 man/man3/memccpy.3
index 0ba805176..057890f7e 100644
--- man/man3/memccpy.3
+++ man/man3/memccpy.3
@@ -23,20 +23,22 @@ Standard C library
 .fi
 .SH DESCRIPTION
 The
-.BR memccpy ()
-function copies no more than
-.I n
-bytes from
-memory area
+.BR memccpy()
+function copies bytes from memory area
 .I src
-to memory area
+into
 .IR dest ,
-stopping when the
-character
+stopping after the first occurrence of byte
 .I c
-is found.
+(converted to an
+.BR "unsigned char" )
+is copied, or after
+.I n
+bytes are copied, whichever
+comes first.
 .P
-If the memory areas overlap, the results are undefined.
+If copying takes place between objects that overlap,
+the behavior is undefined.
 .SH RETURN VALUE
 The
 .BR memccpy ()

