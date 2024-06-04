Return-Path: <linux-man+bounces-1029-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D8F18FBB6E
	for <lists+linux-man@lfdr.de>; Tue,  4 Jun 2024 20:19:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2C1731F22826
	for <lists+linux-man@lfdr.de>; Tue,  4 Jun 2024 18:19:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C46D014A61B;
	Tue,  4 Jun 2024 18:19:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com header.b="LdY8Zgcv"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C9D214A611
	for <linux-man@vger.kernel.org>; Tue,  4 Jun 2024 18:19:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717525150; cv=none; b=Gcn+M94FrqbBPd/KgonL/pjBLAy5Usu8fFNOJ+f0r/B4OcnThFqIWI+gbhlxSdO6JjYIJhjJvBUIpbD7YYFCmS0Tffv1ca/qoLGb7szFDFpPp2i5VdXR3TSBUHrJgl0hNOkGUeVuSco88K3YeM0ZBteOtff4YuKCHZUmyVQt4vE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717525150; c=relaxed/simple;
	bh=HGZ9suZo8vXdiqj7tabYZ1WD4VJ6H3Li1uAK1piABRk=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=rXtggyeiwWCaNSdmuWPb3BstjlXjEBTKrtzXq3YxEQiVKsKnAWTspwh1LB3CjKgwl+AlCqIwDTTU65yrfWaFWTztuJZ4Vc6yExc//tj8Emn+P2Bf9YZrEZu2L0EkuZZMZKgIRpRPiSQUCx9/j8eyiVqVy4y3pvgl9e7Lfq0lyrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=fastly.com; spf=pass smtp.mailfrom=fastly.com; dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com header.b=LdY8Zgcv; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=fastly.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fastly.com
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-702342c60dfso1049310b3a.2
        for <linux-man@vger.kernel.org>; Tue, 04 Jun 2024 11:19:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fastly.com; s=google; t=1717525148; x=1718129948; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wC3ityLaryFfmcqE5qIfw7y/RSW153dRlcLlRi2VmX4=;
        b=LdY8ZgcvbAbYf4x1mU4JKBB3Ge1XlMvlgb7yIblpkb66LNVZw/o8A+LBVDqth6HyHY
         d3yrHEW1i+3t8Zd/tzmyv1uDIn5Vn49fXPKDYzFvwvDODa7D4LaDa6CEg3WgEdk0Km+K
         9LY+rz6Tjqxr9BPVYbmadpKNNNuao9jcy0k5M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717525148; x=1718129948;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wC3ityLaryFfmcqE5qIfw7y/RSW153dRlcLlRi2VmX4=;
        b=vkQbKom6idZysUryaAcMu007FEnWCFSQb/ykQ/RhMAFI+QW7tU88pp6a8SHy5EHbyC
         oEZANG+catvzKu72zESDdpuaMQAvitmRVx2aZx+ytgGr7DdqpI1k65MpRABkKwEJnN8t
         WH0+4LuQKaEFrlKzZbeWN7vrN8dhCe9JyeyV2ACzMTHRR1z6E3QVTb2xXIHz3AF6K7ZK
         OSSWXCDGAYshAspHnSYj5Qtcrq7YWwyNzZKV+So2ciO53eix/j7s689n9lGWqm0elhvl
         cBlmhRnWWkzZKIbrNQvC5xl2IgzdtfVcFn9CwwSy5AKtbvnPrz7Q2igpXdE3Pe8Bk+Kp
         Wn+Q==
X-Gm-Message-State: AOJu0YwXUGmYHdZ2SwJO2WyDuvPFMy1daVKwHF0oVpbUG6QITpPp0xVH
	GS9wYPXsi/wXpeVDv9EP8DLTnGpn2CC/Z9sMYmqtgKSyqpfQ1twfb2e1JCZmbxEE3shAusjbSdL
	h
X-Google-Smtp-Source: AGHT+IEipIGAvnIr8Uv/y1kU9xbkQxXxkj4JP5/4PUmHJwhAfl0zwhmad2I8ONJfw7Mwpm1njNNNEg==
X-Received: by 2002:a05:6a00:2190:b0:702:7d70:9073 with SMTP id d2e1a72fcca58-703e59b0892mr295154b3a.19.1717525148262;
        Tue, 04 Jun 2024 11:19:08 -0700 (PDT)
Received: from localhost.localdomain (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70242b13550sm7314604b3a.182.2024.06.04.11.19.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Jun 2024 11:19:07 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	Joe Damato <jdamato@fastly.com>
Subject: [PATCH 0/1] ioctl_epoll.2: Add epoll ioctl documentation
Date: Tue,  4 Jun 2024 18:17:39 +0000
Message-Id: <20240604181740.1741860-1-jdamato@fastly.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Greetings:

This is my first contribution to the man-pages project, so please excuse
any obvious issues; I am happy to take feedback and send updated patches as
needed.

This change documents a new ioctl interface for epoll added to Linux kernel
6.9 [1] and glibc [2] for controlling busy poll on a per-epoll fd basis.

I noted that other ioctls have ioctl_*.2 files, so I followed that
pattern in this change.

Based on the current status of glibc, I would assume that this change will
be part of glibc 2.40 (it is listed under 2.40 in the NEWS section), which
may be released in a few months [3].

Given that, I am not sure if I should wait until glibc 2.40 has been
released before sending this change to this project or not.

Please let me know.

Thanks,
Joe

[1]: https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commit/fs/eventpoll.c?h=v6.9&id=18e2bf0edf4dd88d9656ec92395aa47392e85b61
[2]: https://sourceware.org/git/?p=glibc.git;a=commit;h=92c270d32caf3f8d5a02b8e46c7ec5d9d0315158
[3]: https://sourceware.org/glibc/wiki/Glibc%20Timeline

Joe Damato (1):
  ioctl_epoll.2: New page describing ioctl(2) operations for epoll fds

 man/man2/epoll_create.2 |   1 +
 man/man2/epoll_ctl.2    |   1 +
 man/man2/ioctl_epoll.2  | 203 ++++++++++++++++++++++++++++++++++++++++
 man/man7/epoll.7        |   1 +
 4 files changed, 206 insertions(+)
 create mode 100644 man/man2/ioctl_epoll.2

-- 
2.34.1


