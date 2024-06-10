Return-Path: <linux-man+bounces-1068-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 73BC4902C5A
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 01:14:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EEB1BB2472B
	for <lists+linux-man@lfdr.de>; Mon, 10 Jun 2024 23:14:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDB8715217F;
	Mon, 10 Jun 2024 23:13:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com header.b="eW5dyHdU"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14CDC1BC39
	for <linux-man@vger.kernel.org>; Mon, 10 Jun 2024 23:13:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718061196; cv=none; b=Ukac3rausxWx6QmejGuOQ4ejw6QkYQ6+7pTUUQ4MQuCB1k6BymEPdUfqCQDrLf9ZQ6FDnhSBGF4bhnx+vNfzY+WJ5Afj8O4E/wyzpTJzFwxvhMYY2ToA0+GVclOBtlUKniOC6tb/iVyfet6VNBQLRY2SrKfY5ur4x/d1yDPM9lA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718061196; c=relaxed/simple;
	bh=B+y+v9z4ii5qyV2mHR0Whey+8hE+oauM3gB0w2ry1gA=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=F6P6B4ghYL2g0V+oBmWYe5eIMzy/NFzDlNgZq1XYdA84Do69XNd862k1OPTCuCPTDj5I55TjUbAx/YDtJ4LHR52t89uPeOInacYp5gmRfwaG9LUGkr7phGmHXRD7dqmnJhXhpFteXDtVf/1jK5odA+OojhKdWTvksNElmJbA6Ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=fastly.com; spf=pass smtp.mailfrom=fastly.com; dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com header.b=eW5dyHdU; arc=none smtp.client-ip=209.85.215.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=fastly.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fastly.com
Received: by mail-pg1-f179.google.com with SMTP id 41be03b00d2f7-6ce533b643dso3815642a12.3
        for <linux-man@vger.kernel.org>; Mon, 10 Jun 2024 16:13:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fastly.com; s=google; t=1718061194; x=1718665994; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Aq/cwbMsTcOVmIa3DcH6nsOeTliieXxpgAIW7otTlIg=;
        b=eW5dyHdUSF2wIYjhEjOmm7rspbL115Zsog0fK47IwQW6uYDXBxeauxaaLqAAC9Mla4
         WNbhdtJ4AyF+QgIVwmtkCJ58WOkaroXsflOKWvypu5nFWdrXWaaCcddvFtr9Dt2fiex4
         DNTPcE5Awd/Q1wuc0PH1bsj7vgx/+J5qxWo+I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718061194; x=1718665994;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Aq/cwbMsTcOVmIa3DcH6nsOeTliieXxpgAIW7otTlIg=;
        b=fIZV2n2/YDCzihsqCFjtvVAHSI9Rge9NEF6fVh9YaSwHmBpuqgU/9LwtRIXEH8has7
         OB5vDSPJczLAY/gmv13I47D1r7gsA8kkmFuvvOzCRgAyTEb3zhr+kLxXUJe5WNLC/mj4
         RJVCljnjwK2cRczyDdKZOAJmkjpIJjJiSx4IufPvwkwef+YlhixiEiZmOovgPUY3/lWI
         ib9OA50MvGFWqCMJs/z+ajPIjfHVxE/33nqEkBTHYPm8V58KOSmqpnUDF1YyglJnVlhZ
         GPQaXrYKYjSyTHoaiCj++7pSElgbknM3Pt1LRi4sd9lD/lhw/lejTv1VsPpUfoa0tUYs
         kGuw==
X-Gm-Message-State: AOJu0Yw9dNGvsZt2gF9WMQz4FWgbuQOJ2IPZk6ZOvsRpwDwRym/dEHzQ
	TN4V9kxo1541FmpTLme1KFm4Y3goeynSsE2Zgsc4RKzD1jBi0RYCFUq6Lwr6zFGPxp6G/XIXt0C
	U
X-Google-Smtp-Source: AGHT+IEwO+8ZT32Ml8xcc38N7kXfCI3pYIYCcu2UhIJyjA9iSdcvcFsrRxuvQT1ANGByoiSZPB+4jA==
X-Received: by 2002:a17:902:ce90:b0:1f7:12f5:d7d9 with SMTP id d9443c01a7336-1f712f5d9eemr39345925ad.16.1718061194278;
        Mon, 10 Jun 2024 16:13:14 -0700 (PDT)
Received: from localhost.localdomain (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f6ff937456sm39378615ad.243.2024.06.10.16.13.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Jun 2024 16:13:13 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	Joe Damato <jdamato@fastly.com>
Subject: [PATCH v2 0/1] ioctl_epoll.2: Add epoll ioctl documentation
Date: Mon, 10 Jun 2024 23:12:05 +0000
Message-Id: <20240610231206.1788738-1-jdamato@fastly.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Greetings:

Welcome to v2.

This revision fixes several style and formatting issues in the previous
revision and adds link pages for EPIOCSPARAMS and EPIOCGPARAMS.

Thanks,
Joe

v1->v2:
  - Add link pages for EPIOCSPARAMS and EPIOCGPARAMS.
  - Many edits to the main ioctl_epoll file to better describe the
    operations and document the interface.

 man/man2/epoll_create.2           |   1 +
 man/man2/epoll_ctl.2              |   1 +
 man/man2/ioctl.2                  |   1 +
 man/man2/ioctl_epoll.2            | 171 ++++++++++++++++++++++++++++++
 man/man2const/EPIOCGPARAMS.2const |   1 +
 man/man2const/EPIOCSPARAMS.2const |   1 +
 man/man7/epoll.7                  |   1 +
 7 files changed, 177 insertions(+)
 create mode 100644 man/man2/ioctl_epoll.2
 create mode 100644 man/man2const/EPIOCGPARAMS.2const
 create mode 100644 man/man2const/EPIOCSPARAMS.2const

-- 
2.34.1


