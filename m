Return-Path: <linux-man+bounces-4290-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 978F1C5013B
	for <lists+linux-man@lfdr.de>; Wed, 12 Nov 2025 00:39:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7A0FB1897316
	for <lists+linux-man@lfdr.de>; Tue, 11 Nov 2025 23:39:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EE322F361F;
	Tue, 11 Nov 2025 23:39:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mightymoms-net.20230601.gappssmtp.com header.i=@mightymoms-net.20230601.gappssmtp.com header.b="POKeqhwv"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 817EE2E7167
	for <linux-man@vger.kernel.org>; Tue, 11 Nov 2025 23:39:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762904361; cv=none; b=aOiGVDeFeuEKezpfXPdBugIVbTUiEIAskWqhs2D4H2mKDr5K03tFmQgX74v4485Gsdmzp1En6NAxW9csSOTrsfzVLpGrRHHUxYf1TnE6HTgCJKNsiHqV/z466QbilA+yRWHqHIC8puAKe+ti6NdsQgWtQmEm1NvMwwVE3UEpT94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762904361; c=relaxed/simple;
	bh=wDebVeSj+Z8firlwBeCFH+pZAoKVtIh0sQbECgRJi9w=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=AZvUTBwDP5YmwKnzB4Il1B8H2xpLlXA50JHtXIbJPS/1Bj6hHiOl1qiptbi/qr9vAuPD2Ddb7mwBB9B4cBkMRhgzPmI1TlFdlEJm2lUtuov6Ol4MEHh9fsyng5nVptBOwQQ+N6puxfzvfLO7g/CVfXNLX7qG4VrUJM8BLrXPD8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mightymoms.net; spf=pass smtp.mailfrom=mightymoms.net; dkim=pass (2048-bit key) header.d=mightymoms-net.20230601.gappssmtp.com header.i=@mightymoms-net.20230601.gappssmtp.com header.b=POKeqhwv; arc=none smtp.client-ip=209.85.128.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mightymoms.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mightymoms.net
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-71d71bcac45so2471487b3.0
        for <linux-man@vger.kernel.org>; Tue, 11 Nov 2025 15:39:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mightymoms-net.20230601.gappssmtp.com; s=20230601; t=1762904358; x=1763509158; darn=vger.kernel.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=wDebVeSj+Z8firlwBeCFH+pZAoKVtIh0sQbECgRJi9w=;
        b=POKeqhwvMuqSaBHsfCYg8Z8YnwvaCopzcyNUtn9EvzmlDu+o+rrveE913O2CjTxkF3
         tbMwyv4t0vdk25wLabN+tDFaVCfEku0ysate6XwqtTgmC65k+cV3OUITjIIzXY9jz7b3
         UZ54NFW8dpWPzVOyXikWhco0WG65gRmp7nzom423+RdJVSxMA8+7JL7GDi0353Kl7Zcz
         GhWJ4oPnmBA/0ksLaYOL9uhgPqGjWwKqXVlzJqzo+U/+W5IicB5YB1m2QNWVeIbxiUH3
         0hUf+ByCBj4zVEBsdzWtLNJ5kH8qu9aqCQoEPvPm5CI6AjoKQNBi9pDcNtlOo8ez/WZV
         W9eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762904358; x=1763509158;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wDebVeSj+Z8firlwBeCFH+pZAoKVtIh0sQbECgRJi9w=;
        b=wlwEr1dVLro45nNKHk/OYpm59j8IHWTHnRKhwGLMnziwUrjLSqAiEhwu63CmIqSbL2
         RwVp3CYu4Q2R6iqfKk7OEZ12/vT61MjtMfvRJp6MuELd3UK9rPNUua3fU96i8mEJfvGf
         AXnKJb0HoWKVkZR6F3sYYI9bI+8kEeUmyjvCCb4xsZVzOeaLidupK6nWt2tAH/Njj/m+
         dIVbQdnQqUVmsW3BAM1RW0H0he8l5NYu7Oo69UY1C+4KlHjdgVROiYU6t+u/75AY17vk
         VBAtUYZKtthlWBjONa9WNU2KtRaj6eOdWRvnB8rF9UoeODn8RL/sKdHYuqjhEtixVm7O
         8d7A==
X-Gm-Message-State: AOJu0YxRvqMkvyeFrYyd9mTIRZtmCye2tnx7Y0kNw/LiORKPJnr8sSZV
	T3PKk6XjYlbJolmZJXdd6B1mMWrMC+W3mUHDF1GSuxqOb3nmbp6NpsdX49I+65E/v79rLdfm46U
	ZYkS7Q1V5g6cWAjJrefa1RwbTngzALpC2G6V8AKjZWpYRRQKqRmy1
X-Gm-Gg: ASbGnct+sP4NCa06tDuUdCra5N0awBNmAOD5fe/1KuR9Fla9G5oxtg85CHOKuRTPB+X
	oKRn3LFldg2Umrj7uMI5zEF4nnqTecj+JBqrznBpYqEqTIu9fD8r38s4bD5c/HF6d4VwhxBTFZh
	UPf9T5eAxmq4Q4Px5lVLOe+SYbxW8a+R0dN+L9GoceU+FD9NSruK944y47Sf04ayL65MKbBoZL3
	WzfCIZLuzdzhQRs4C+2FA+uAGJ2Ms7iTvi7MqjiJSADtIq4Ka0YAFBNcH7v
X-Google-Smtp-Source: AGHT+IEQC/3NEHEDzU6hIr1hTH2sZY1hu83BrKnYo3l8IEed2GzYIuWBKNdDjg/Proan6m8wqpsJgkM0+sLWwYAz1Zo=
X-Received: by 2002:a05:690c:67c2:b0:786:802b:d7ff with SMTP id
 00721157ae682-788136df7e1mr9258907b3.59.1762904358077; Tue, 11 Nov 2025
 15:39:18 -0800 (PST)
Received: from 316179279012 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 11 Nov 2025 17:39:17 -0600
Received: from 316179279012 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 11 Nov 2025 17:39:17 -0600
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Emily Graham <emily.graham@mightymoms.net>
Date: Tue, 11 Nov 2025 17:39:17 -0600
X-Gm-Features: AWmQ_bknX8Y-boA-FV_cTu03P24C-Zb0FSLSwrl5nvSj5VYGiQLpjRTNf62Ug3c
Message-ID: <CAJWoR_cROBJAkcwrPfs+VOU6MAiJ0nQDV+K9ycZwNh0vXkEfnQ@mail.gmail.com>
Subject: Pitching an idea for your platform
To: linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi there,

Adolescent anxiety can be tough on both kids and parents, but it also
presents an opportunity to strengthen family connections. With the
right approach, families can turn these challenges into moments of
growth and resilience.

I=E2=80=99d love to contribute a guest article to your website, offering
strategies for parents and teens to navigate anxiety together. From
encouraging open conversations to developing effective coping skills,
this piece aims to help families support each other through difficult
times.

Would you be open to featuring this article? Let me know, and I=E2=80=99ll
send it your way!

Take care,
Emily Graham of Mightymoms.net


=EF=BD=9EInterested in my guest post proposal, just not on the topic I
mentioned? That=E2=80=99s not a problem! Kindly reply to let me know and we
can come up with an alternative topic. I put effort into making
content that people actually want to read and that smart tools can
easily surface.

