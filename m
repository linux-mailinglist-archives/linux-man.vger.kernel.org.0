Return-Path: <linux-man+bounces-1513-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 32C2E939EAB
	for <lists+linux-man@lfdr.de>; Tue, 23 Jul 2024 12:19:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 63D841C21E45
	for <lists+linux-man@lfdr.de>; Tue, 23 Jul 2024 10:19:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F44514C5B5;
	Tue, 23 Jul 2024 10:19:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="PZpgf/iK"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ed1-f73.google.com (mail-ed1-f73.google.com [209.85.208.73])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBFDB3D6A
	for <linux-man@vger.kernel.org>; Tue, 23 Jul 2024 10:19:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.73
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721729967; cv=none; b=qQ8klTdroAh5LE38hlPghtRUciERRD1g+/L8EYuzxNSxAoCbpAMw24EOhYrPTLrL8G/Bf8fR0pHFuXzWCd0+reF2864VGc3xStM17ojrTXSfvUcZTh4fQz0sZ8H3fFieU3c7qiTub0gWMyR78F1Y6qwdPSK9AGNY/MYMRmybI2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721729967; c=relaxed/simple;
	bh=aOpJpQ3CjIDbmxpYLc0WqW9hBi5vxiuGkwx1N3s2Xhc=;
	h=Date:Mime-Version:Message-ID:Subject:From:To:Cc:Content-Type; b=pflmKGlKURXSHyo9+3jtLg55wI9BElDx4gH0oIAep0RSUkEy8d4aHyS/edg2nSnTh/jBXM/MN2p6V2pN5LHYHtvo4CILwuYggXqwrvugx5syeOnEFq94vOzQyuFEsr+VO2LhZICRfc4pFQdLb0PzmRjymi02DWQmbb7jAw/sqRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=PZpgf/iK; arc=none smtp.client-ip=209.85.208.73
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com
Received: by mail-ed1-f73.google.com with SMTP id 4fb4d7f45d1cf-5a4c36f66c3so2135153a12.3
        for <linux-man@vger.kernel.org>; Tue, 23 Jul 2024 03:19:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1721729964; x=1722334764; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id
         :mime-version:date:from:to:cc:subject:date:message-id:reply-to;
        bh=H7sS9AxQwoJDFwZuxCsP2srWxFuaEEgPrUYBh99Py8M=;
        b=PZpgf/iKB2a4wM/HdwFrS91k82aUOjyiGvgCGvoe80b4qAqxxZAhP0mY9oPOOXRNCk
         Nm+O1KOI55aYNhEAzO1bDaw1xBk2OKNaXktCQBluS6ClYLvwyS5xTBiqtRC2rglmwYTH
         27n8sMmeCHQ+kTo5ixMObts9oYOIomRSJqJgt6Fz3GT8//mKImrgxdY9UjnFEWDC2443
         EKNjnGnTtHz2LbpT/9F4EK+nKbGCPYg7P13q358sLghIfc2aXiM41CG9OvNliaZegiV1
         Nq11cTSVgfiKEEJTfPekZ2211g/+qJ+5kiyBr6xxUv449b/5F10pQ+nw2aL6WmoY8jmg
         tnMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721729964; x=1722334764;
        h=content-transfer-encoding:cc:to:from:subject:message-id
         :mime-version:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=H7sS9AxQwoJDFwZuxCsP2srWxFuaEEgPrUYBh99Py8M=;
        b=kD9L7xtf+lY8Z1/pySE9+HrcLMl4/F4rW7iZ5vDv47RFs9LuA4LzRsRtPT2vBcoB/O
         Kvs9lCpKOL/fZ9LN1UgSdN+b3/TeO08h6xkoItD/GiV+hJz1/e9Etaov787/3zcIrLI6
         5aVlXiz55eAhUNOedxgu2lUvtiDK0+i/HaKLpGwKOpWG/P57lrVEEhWR9hdu+eW0XsxM
         hA+1B1ixt/4XooBgzTogjGA3ZpG8HGehzDRV7YKWmb7gdar9kwyiYWYHsXY2Ba7MG6c1
         b4RIf87YAxO4U7TzaZZ6IU8VT7bHq4bGBDqTC8QQmOvskU8ujFbALYsJ9a+quUKBy8Wg
         Nanw==
X-Forwarded-Encrypted: i=1; AJvYcCUhcxchRUO6GWRrBBDEL179lbsuI8DWYTKNSGJnGkaPuQIXAmmUW9TQJyK5ytmxRA0bEO99CBy2qicpiJU315PsRiWsCWTHNTsW
X-Gm-Message-State: AOJu0YxOhwIXCwjo3S3OafOlGziXLsGCRTMTjaN70xwjE61PDJr6aSMx
	sbpUiNZ9+XwTFIV9kyiEL+5fAgNlgqTga0tDSaRn1aXThiu/FLmEBjIlXUDeNS0cOZ7CHYefnGD
	p6Q==
X-Google-Smtp-Source: AGHT+IEDFGIjGAMpz5iG/dW1lN94xs7vsOqt5iVoxaay4XILUqisYSEyykhRMAYWWGqT1Vir63w2cb4qLPM=
X-Received: from swim.c.googlers.com ([fda3:e722:ac3:cc00:31:98fb:c0a8:1605])
 (user=gnoack job=sendgmr) by 2002:a05:6402:22d1:b0:58c:d53f:cd58 with SMTP id
 4fb4d7f45d1cf-5a943ee0afamr2188a12.5.1721729963741; Tue, 23 Jul 2024 03:19:23
 -0700 (PDT)
Date: Tue, 23 Jul 2024 10:19:15 +0000
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
X-Mailer: git-send-email 2.45.2.1089.g2a221341d9-goog
Message-ID: <20240723101917.90918-1-gnoack@google.com>
Subject: [PATCH v3 0/2] landlock*: Bring documentation up to date
From: "=?UTF-8?q?G=C3=BCnther=20Noack?=" <gnoack@google.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: "=?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?=" <mic@digikod.net>, Konstantin Meskhidze <konstantin.meskhidze@huawei.com>, 
	linux-man@vger.kernel.org, 
	"=?UTF-8?q?G=C3=BCnther=20Noack?=" <gnoack@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

This brings the man page documentation up to date with Landlock
ABI v4 (networking support) and v5 (IOCTL support).

V3:
 * rebase on the already merged patches 1/5 to 3/5
   (worked without conflicts using git rebase --onto)
 * use \% and \~ in an additional place in 4/5
 * use angle brackets for URLs in commit descriptions

V2: Addressed the small issues brought up in review
    by Micka=C3=ABl Sala=C3=BCn and Alejandro Colomar:
 * various small wording and git-merging issues
 * small commit message formatting issues

G=C3=BCnther Noack (2):
  landlock.7, landlock_*.2: Document Landlock ABI version 4
  landlock.7: Document Landlock ABI version 5 (IOCTL)

 man/man2/landlock_add_rule.2       | 74 +++++++++++++++++++++++++----
 man/man2/landlock_create_ruleset.2 | 12 ++++-
 man/man7/landlock.7                | 76 +++++++++++++++++++++++++++---
 3 files changed, 144 insertions(+), 18 deletions(-)

--=20
2.45.2.1089.g2a221341d9-goog


