Return-Path: <linux-man+bounces-1230-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 47DFB90BF95
	for <lists+linux-man@lfdr.de>; Tue, 18 Jun 2024 01:11:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 48EFC1C21562
	for <lists+linux-man@lfdr.de>; Mon, 17 Jun 2024 23:11:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E10D7199386;
	Mon, 17 Jun 2024 23:10:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZpelRPn4"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49EB6176AB9
	for <linux-man@vger.kernel.org>; Mon, 17 Jun 2024 23:10:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718665859; cv=none; b=n6NHtwAFeqO+aaeglxoK05uPvRW3acafqu0zqfCHT1Z9+S3wcuq3RhRJz538rEK1SbwNiEsnU1DBz1Eem6WkWjQoNH7TLef+b9bSTwE3io//1HnyT7cAGR+WB/p1DdX6hyWBc7dHThJQ0rNU9GGWfZfZ6D+kfmM2l3+orxLaFBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718665859; c=relaxed/simple;
	bh=4WEwzzXd1c+CjW9FgCs5oT2rEN6zXDJVlxL128n0TYE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PPPGs3VkBQHvhCb1aySYKfuSOV/0OHEJwUgaLeJzwODXk/uOg3davws0OomebJbqHm4N9Mv+2xegi1PvdR0CpExV6Syu3XKFZAMn6JDlxV1dV7JRB6jk12wScmcj7tRAW5v3+vXywp0igrSxeFopC07N8dbFScMRA5t1QCSzjzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZpelRPn4; arc=none smtp.client-ip=209.85.222.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f170.google.com with SMTP id af79cd13be357-7955ddc6516so348016985a.1
        for <linux-man@vger.kernel.org>; Mon, 17 Jun 2024 16:10:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718665857; x=1719270657; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fq09H3ZvnGO+IO4h70z0+bpFdvvisawvA/sYJrGsmNA=;
        b=ZpelRPn4+Dc2W2y7cFIZALChInnqAdjTz1r0aw+RzmOPKSsZBzA1j8IXEr0f/rpyqD
         3K0b3q/JMitYW27hbEmEoAJmKLpIQ0hveo5lQElzuUBl6hAyeROKykmIxSjq2CDIW8lr
         VrmMvI8tkpf4pYkcu3SvgMhknbPwKkiBR3h5Z8GKDBkQo5BXPckZaUkM/x4cXJ5KkdfW
         roJFhwOqEsq/1Aqp+PfihF0vyrBLYca6ntECSynH0WzCUakWWrL/45Ie1Na3ksrYFHXs
         2ttVdnY5jpsevdVibUHBGpXScgYYiu1HdLIFEIluLoHYNYctROPLHrvrfHcOPhmmhZ3B
         Qf9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718665857; x=1719270657;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fq09H3ZvnGO+IO4h70z0+bpFdvvisawvA/sYJrGsmNA=;
        b=WcFVhHRkAJ1gpepnDBzmtVQ+kO2/iCR1rsWAcutyewLJdXicesvXcRKzRKY3UzzqDl
         4oXgXyyUsxbWNJNIVzWpueIkJwO6MGrv4RrQCPnMzvZB3zGBhLz30DbNQr4zGxGOqNIB
         G3gD0roPCpnkCUD32upewK94Yx72lenvkgyiNu4LfGiyMxq13Y5V+kdzowBDYELp00f8
         1xib86ouJm3U8zJXyfjLrMwe4mFmqU90jA8/K31+NhjyNnS9ZuA75RenDFpbViDyv91n
         0loAaYaSaQxjjrOv/9HJdpKHQ8Hu/3h92jyMS1cVbdLBeQn/poO8p1JPowsdFhkh6ndT
         Wu2w==
X-Forwarded-Encrypted: i=1; AJvYcCVATIItrcLprvK+BX3/F/iPpqJudFN+v29LqYlpZKmdiH47bUEB5kPs8Qj9WizxP0A5+w7wrUvM+6JlHt1igSB3zkHaqJBrtQw+
X-Gm-Message-State: AOJu0YzpNZJIRwKq260OHTfmjOd6DtTHXTdy3ys7dD5oqEyyLuIg7m+M
	vbUysjQwrO88R0seqbSAXCWekBRqm6TpekuubK9Vu2wfhnCdx2pnrYAzaUxI
X-Google-Smtp-Source: AGHT+IEkubE1Ki1m9QVHyclUStm4NJuZcOQJu/OeW5sinm1K0MK3opn5sPE+XbgeDjCp/1Njk5gnxg==
X-Received: by 2002:a05:620a:1787:b0:797:8560:8eba with SMTP id af79cd13be357-798d243ab4dmr1390899285a.46.1718665857124;
        Mon, 17 Jun 2024 16:10:57 -0700 (PDT)
Received: from kir-tp1.redhat.com (c-67-160-124-188.hsd1.wa.comcast.net. [67.160.124.188])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-798abc105b4sm471409985a.79.2024.06.17.16.10.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jun 2024 16:10:56 -0700 (PDT)
From: Kir Kolyshkin <kolyshkin@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Kir Kolyshkin <kolyshkin@gmail.com>,
	linux-man@vger.kernel.org
Subject: [PATCH 03/16] execve.2: fix wrong section reference
Date: Mon, 17 Jun 2024 16:10:15 -0700
Message-ID: <20240617231035.1766780-4-kolyshkin@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240617231035.1766780-1-kolyshkin@gmail.com>
References: <20240617231035.1766780-1-kolyshkin@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The man page says:

> For portable use, optional-arg should either be absent, or be
> specified as a single word (i.e., it should not contain white
> space); see NOTES below.

Since the commit 4131356cd ("man*/, man-pages.7: VERSIONS, STANDARDS,
HISTORY: Reorganize sections"), the discussion about optional-arg is in
VERSIONS.

Fixes: 4131356cd ("man*/, man-pages.7: VERSIONS, STANDARDS, HISTORY: Reorganize sections")
Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>
---
 man/man2/execve.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man2/execve.2 b/man/man2/execve.2
index 997bb4724..1802258ae 100644
--- a/man/man2/execve.2
+++ b/man/man2/execve.2
@@ -362,7 +362,7 @@ .SS Interpreter scripts
 For portable use,
 .I optional-arg
 should either be absent, or be specified as a single word (i.e., it
-should not contain white space); see NOTES below.
+should not contain white space); see VERSIONS below.
 .P
 Since Linux 2.6.28,
 .\" commit bf2a9a39639b8b51377905397a5005f444e9a892
-- 
2.45.2


