Return-Path: <linux-man+bounces-508-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DA66186F769
	for <lists+linux-man@lfdr.de>; Sun,  3 Mar 2024 23:27:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8946C2813D1
	for <lists+linux-man@lfdr.de>; Sun,  3 Mar 2024 22:27:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5441C7A70E;
	Sun,  3 Mar 2024 22:27:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mCb/F0BA"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7504E43AB5
	for <linux-man@vger.kernel.org>; Sun,  3 Mar 2024 22:26:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709504821; cv=none; b=pCzUHYvBFdFGp6EUAuPAaZi6JfzVKRK+At6ofBrgN+ukqZiqDcoNSEjLdUSivaUdQmzdNc/8Uf56CUKU+XAAfWDesVsY/eKhs+bomLMy2IIAk/ncnh6J2jTorrSLyFY7os1td4CoLA58+SS/5IyXfnOGP27ragfNyknGZmoyjdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709504821; c=relaxed/simple;
	bh=QpCX7q+AjOnuzD3cwZahjtEQOxXnAl3NhSkK3N35KKg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=G4wviuJUWdmD/nQznoCaWG0W7Hwv4xm5EEKXStQDsVwV/l3qNkHuucNfXgJ95ZF7HmUk351DHFIFlz9qeUKCnyOTh5uMiid1bFv5D5FR2s5lx5nCiaOR8fVFmSnyA99yormfKVG/OZSi+RedzEMnc9KfaHtq34wqXJ6vEcGxE0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mCb/F0BA; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-a446b5a08f0so453810366b.1
        for <linux-man@vger.kernel.org>; Sun, 03 Mar 2024 14:26:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709504818; x=1710109618; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=so6y7GAzsoSyxm60TDD8SLV6hJW3fhd5XLKWVmFvvso=;
        b=mCb/F0BAFD/Q1si8ybX0pP89o//YJiYnhsUvKSNHzZN4rw9lbTMu9P2W+cjFri5rkh
         x3iztzKZm3kThktoSLczT1bwE040xk3+wnu4nr8lY9XJbqAo6UCOzZ4QU0IeIt2h4Q3U
         /r0VAhboFJhO18nK9jK+a2kDYbL9iIMez8+fmi2AcEPweyUEd9xPIi4H4ycttzSefhAU
         dLgK9tDd1kw5iPxKcrJftHy7Eh9Nrnc1342FU2Ct7+CsCJ5WrqQ+0VVkbR6fiphtaju4
         w1JU3f5CgtoLCfmEiFPoFvrkhzb16Gwv+0FGDz8dHlUc8Nnjfar1nX+PQsHHiaLwlfN0
         uxRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709504818; x=1710109618;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=so6y7GAzsoSyxm60TDD8SLV6hJW3fhd5XLKWVmFvvso=;
        b=h6MvFehOFOsFv0o5LyqXKAWWOgJcCqElWW9ZWBLxTdfNz4ZHgxMQe4ZSXrVjV+kZdv
         3Az2kwL+zw+sNjJJMK0V0O9uTV15Xcz7EothhhGZBLPkCZBg0Dq5xFQn/WRYZk+TBI7q
         niarCAA3mQiBl4oL1mgsBXLryeVCfqVYMUFsdLecPt6Qc6Ukft5Eoz2lYzv2eCsxo1s3
         w5xSns2XJar5V7bUyxMYJ1H7kO9683Hpui19BkHZYg0AStZQ50yKBxAGg1jx6zBDaDhQ
         ROwMgOVFncO3V8X2v0wo87NfbD/gOu2MKxxJzn7pwHr9XRbhqtHaCyRIMG0pKcyZX7wN
         BDow==
X-Forwarded-Encrypted: i=1; AJvYcCWBGx4bQ03ekMqa720A+6gzEHE0Y0urThEl90e/E8DfqCH8hngetCQya506YUrNXnsmmNQBR8nhKa/BXiMrKZlR0XS4LVmpCTza
X-Gm-Message-State: AOJu0YzcHPIQO4OE/TNdz/njYNPkNJmyp2HB+NiwVpnHl5O9G6XZzxlG
	YOAjUnR5qMbHqx1TgjLFsDZqo5i4jUKMMUTCsbpEtDuxEPXnbcGnKdq4gGGjfpQJ6yu7bE6lhhO
	UlEYKzB3iCctllV9u5RR1q9BlBI/r+vjOsFikeg==
X-Google-Smtp-Source: AGHT+IEKbyrkvZU00E/o0ri1KObEIqW01lhkGKOqHzcDZmMhniIqiG+B/MT46/Ibt0qZBvatUyxqWNrpOpc7XYcuxs4=
X-Received: by 2002:a17:906:dfd8:b0:a45:53ca:307 with SMTP id
 jt24-20020a170906dfd800b00a4553ca0307mr594248ejc.8.1709504817563; Sun, 03 Mar
 2024 14:26:57 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CANv4PNkVv_0eLgiSP3L_KfC-eZJaVLZ5AP1AGfD0GNrR5M4Hrg@mail.gmail.com>
 <ZeEnJB96mMC5bfBz@debian> <CANv4PNmMpiwfv5acr7U6VEVe7PE_AMTzkkpNoNN9jrtVzk_93Q@mail.gmail.com>
 <ZeOgFPCtzqY90kIR@debian> <CANv4PNm0xvB-GVb+z1yXPRVfeZYHU9533+VRTQfysjaycSbHBw@mail.gmail.com>
 <ZePerBa3QAvoFVSR@debian> <20240303114600.GA3653@qaa.vinc17.org> <ZeRrRgEvvxjvHi-K@debian>
In-Reply-To: <ZeRrRgEvvxjvHi-K@debian>
From: Morten Welinder <mwelinder@gmail.com>
Date: Sun, 3 Mar 2024 17:26:46 -0500
Message-ID: <CANv4PN=D-99oF86THKYFndZ5TQJ4oWga5n4DST4mhsLmq1Zr4A@mail.gmail.com>
Subject: Re: Man page issues: logb, significand, cbrt, log2, log10, exp10
To: Alejandro Colomar <alx@kernel.org>
Cc: Vincent Lefevre <vincent@vinc17.net>, linux-man@vger.kernel.org, 
	libc-alpha@sourceware.org, jsm-csl@polyomino.org.uk, newbie-02@gmx.de
Content-Type: text/plain; charset="UTF-8"

Sorry to be a bit of a pain.

Some testing says that the average error from exp10 is 300-500 times
bigger than the average error from pow(10,.). This is consistent
across a large range of arguments.

The maximum error from pow(10,.) in the samples is 1ulp (relative to a
reference rounded value, so the true error is likely less). The
maximum error from exp10 in the samples is 2ulp.

This is not surprising given that exp10 starts out by introducing a
rounding error due to the multiplication before the call to exp.

I didn't bother looking, but it is almost certainly true that there
are arguments for which exp10 is better than pow(10,.).  However, the
numbers below imply that such arguments are very rare compared to the
other way around.


-------------------------- average ----- max
Binade -7      exp10: 0.3378           1
Binade -7  pow(10,.): 0.0007           1
Binade -6      exp10: 0.3429           2
Binade -6  pow(10,.): 0.0007           1
Binade -5      exp10: 0.3532           2
Binade -5  pow(10,.): 0.0008           1
Binade -4      exp10: 0.3774           2
Binade -4  pow(10,.): 0.0008           1
Binade -3      exp10: 0.4402           2
Binade -3  pow(10,.): 0.0010           1
Binade -2      exp10: 0.4118           2
Binade -2  pow(10,.): 0.0009           1
Binade -1      exp10: 0.4228           2
Binade -1  pow(10,.): 0.0009           1
Binade  0      exp10: 0.4204           2
Binade  0  pow(10,.): 0.0009           1
Binade  1      exp10: 0.4221           2
Binade  1  pow(10,.): 0.0009           1
Binade  2      exp10: 0.4204           2
Binade  2  pow(10,.): 0.0009           1
Binade  3      exp10: 0.4222           2
Binade  3  pow(10,.): 0.0009           1
Binade  4      exp10: 0.4209           2
Binade  4  pow(10,.): 0.0009           1
Binade  5      exp10: 0.4200           2
Binade  5  pow(10,.): 0.0009           1
Binade  6      exp10: 0.4210           2
Binade  6  pow(10,.): 0.0009           1
Binade  7      exp10: 0.4210           2
Binade  7  pow(10,.): 0.0009           1

Notes:
1. Only positive arguments tested.
2. powl (long double version of pow) is used as a reference.  I
double-checked with a double-double version of pow (good to about
100ish bits) that this does not matter.




#define _GNU_SOURCE   1
#include <stdio.h>
#include <math.h>
#include <stdint.h>


static uint64_t
murmur64 (uint64_t h)
{
  h ^= h >> 33;
  h *= 0xff51afd7ed558ccdll;
  h ^= h >> 33;
  h *= 0xc4ceb9fe1a85ec53ll;
  h ^= h >> 33;
  return h;
}

static double
exp10ref (double x)
{
  volatile double y = (double)(powl (10.0l, x));
  return y;
}

static double
exp10viapow (double x)
{
  return pow (10, x);
}


static void
test_binade (int b, double (*f) (double), const char *funcname)
{
  uint64_t h = 0x0123456701234567ll;

  double ulps = 0;
  double mulp = 0;
  int N = 1000000;

  for (int i = 0; i < N; i++) {
    h = murmur64 (h);

    double x = ldexp ((h & 0xfffffffffffffll) | 0x10000000000000ll, b - 52);

    double y = f (x);
    double yref = exp10ref (x);
    double dy = fabs (y - yref);

    double ulp = dy / (nextafter (yref, INFINITY) - yref);
    ulps += ulp;
    if (ulp > mulp) mulp = ulp;
  }

  printf ("Binade %2d %10s: %6.4f  %10.0f\n",
      b, funcname, ulps / N, mulp);
}


int
main ()
{
  for (int b = -7; b <= 7; b++) {
    test_binade (b, exp10, "exp10");
    test_binade (b, exp10viapow, "pow(10,.)");
  }

  return 0;
}

