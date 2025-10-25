Return-Path: <linux-man+bounces-4191-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C816C09E3A
	for <lists+linux-man@lfdr.de>; Sat, 25 Oct 2025 20:16:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2C1243A7C31
	for <lists+linux-man@lfdr.de>; Sat, 25 Oct 2025 18:16:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A2D31B0F23;
	Sat, 25 Oct 2025 18:16:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mqRPrAMD"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com [209.85.222.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7212518E1F
	for <linux-man@vger.kernel.org>; Sat, 25 Oct 2025 18:16:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761416162; cv=none; b=JXvUPlR2Iu5MtJtLja+CvzK9OV95fbENdp4ms54VvWfUDS2krQo+BVNSUpBIct1fRwBAIlkcW79IUrlWHwFhXUDAlWSFwI6KmyzwbwAqtq3jEhSPzy9fE8wwoCpcBPJ9vqCBEm+MOSrzmEHIrbN1aJA+NUoO5HnsZcpZa8AwEow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761416162; c=relaxed/simple;
	bh=k9Zfez9Neu0t7mxhpAFFqU5brVDxFlFKzVP4Grv0cic=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=sGdGKwuoQCM3FJ5oJzE2Sh4bzWmJ7EO0ceaZVKTXKuNfCqHvgoU9CPfcE8+g/LhMzUAtso8WyrL4yZtlbfL1BT+qA9X1icefWz1/mSFOGczqRMmer1UZxUCx1xK/VXlchGX0zuF4FD2nb7Mc9JG5HwH3yVtx5JaScav/V9aYBsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mqRPrAMD; arc=none smtp.client-ip=209.85.222.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f196.google.com with SMTP id af79cd13be357-88f8f346c2cso337957485a.0
        for <linux-man@vger.kernel.org>; Sat, 25 Oct 2025 11:16:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761416160; x=1762020960; darn=vger.kernel.org;
        h=content-transfer-encoding:content-disposition:mime-version
         :message-id:subject:to:from:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=k9Zfez9Neu0t7mxhpAFFqU5brVDxFlFKzVP4Grv0cic=;
        b=mqRPrAMDq7ybkT0rfcGIY4wlhNTV3MT7UPvt9xBEggwtBKXt48a9b5+YAVS2kIzhvM
         WhIg5FsuK0podKrt5Qu/DAG9oNMk2MowzYypx7sxks818Bv6kq/1m1BYCRyz0sRlTQXC
         sYQIp3O2JK6lJ3vK9Cb2hZzC9JamHYR1dw0YFNti2N9E5KLNPxDRHP56b+RLnY/9RRXU
         m3/6bg8LYXuuiJ7BgxELRGx+92T1dggnfqq1Hx3ZrnH+/IXvALnuDnRTPj2HopicBXq+
         n1XA8vcfyCGn7HNr4eYr1HpFgNJc8MkNCkkZELUemjMVABupZeg3wy3isNyBX6MU/n2u
         BHHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761416160; x=1762020960;
        h=content-transfer-encoding:content-disposition:mime-version
         :message-id:subject:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k9Zfez9Neu0t7mxhpAFFqU5brVDxFlFKzVP4Grv0cic=;
        b=arIDljfoqr1bEYY94txoB6ti1OrGuOxkXGvW5FfW4D2wXP40RiqL4I6uNQJGVXfqSQ
         PmBhhD2wwP516N2Gli8SJzLtFJEjwa1hRyEomh561J44pv/JpHogd92G/cgc0XaRi4uJ
         pTrye+WPrq/vKqTS1n45pQMz1mW4ObpQmlTOCxQxfZpAsEwfSgIaBKrxKueOY5ko4PWr
         B45854Pcbc3e/teUvuzsz8FsszpxyRG94ajtk9YGEwFAo7Fl3q98xYK0T+lPxmp0n816
         YFr5PSKPtlpSuIjpAssHlsgTOtoJzi3Qv/A7yGp/jnbmsw3FL4/Kg5GhuBtexkIsOWHn
         ATcQ==
X-Gm-Message-State: AOJu0YxT6StJuWHBcdlIOm1xP0zNg3nV14Kt+2YrRTKtFttq4S2IALgv
	ZRM9BH7osfPwTHXdfunCF41ZgSsienKpas+3FKdMbmjFxbvSIz6MYWJSr6mxC3zs
X-Gm-Gg: ASbGncupw4nr5OdJsiC7hxzaFs0qjJfmvSVzsJCoz5iWzU//O7XyyxiBoKutO4TJJP+
	2ynHaE0U9HbHWoayz/Pv+OR474xVIfSXuEGMzTlkljSZxxiK0mqlLmrgguD2IRNTrqIwzeQ6chF
	56sFjg5HtlCR6UaFXfU8t7PjPY5KNguTt28AaSLTD9gVZkpIzC0Mjqf5rqRuRZ9CssE2oPXhp9X
	LrRYzW93Vajga4R/mlGthlqdeeRhHLyTzDQm3Aqr8gRl83DPyGst2ALMGBvJiVLgP05XcdBLSA/
	7iNpqRgtvFFikGadJpAbY68pDzjzvM3h/GCLXfm/vC2+Fk7nBDvANrVdX4iU6SkiRxU9DERmwZz
	jS06DwL+uHdfJ3++ZIkzf5UONNcmGr11DAvWjjAR9gc1i9ZFKm144BjoGU+ZI4+eUDtTCfjzY3v
	IN7XzWgcMcOeQung3y5A+1Prz98J97ZHuXf8QHvQMST6VA4OmJ6Q7XFQv1lTuAz99C3CYVl7VFh
	OZzmjps
X-Google-Smtp-Source: AGHT+IFcgV5HkC0IqZjIU//LRWpWFAJBHWDlHy6idq5v26rnxep0zeH5mOpc/XAde7fZeCFJBvK7NA==
X-Received: by 2002:a05:620a:2990:b0:88f:ee0a:3d66 with SMTP id af79cd13be357-890712b949fmr3254586085a.80.1761416160100;
        Sat, 25 Oct 2025 11:16:00 -0700 (PDT)
Received: from secra.localdomain (pool-71-255-240-10.washdc.fios.verizon.net. [71.255.240.10])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-89f2421fc4csm188084685a.10.2025.10.25.11.15.59
        for <linux-man@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Oct 2025 11:15:59 -0700 (PDT)
Received: from secra.localdomain (localhost [127.0.0.1])
	by secra.localdomain (8.18.1/8.18.1) with ESMTP id 59PIFxcs032815
	for <linux-man@vger.kernel.org>; Sat, 25 Oct 2025 14:15:59 -0400
Received: (from secra@localhost)
	by secra.localdomain (8.18.1/8.18.1/Submit) id 59PIFxA6032814
	for linux-man@vger.kernel.org; Sat, 25 Oct 2025 14:15:59 -0400
Date: Sat, 25 Oct 2025 14:15:59 -0400
From: Wes Gibbs <wg21908@gmail.com>
To: linux-man@vger.kernel.org
Subject: [man-pages] Working on bug #220489 (copy_file_range(2) glibc
 fallback text outdated)
Message-ID: <aP0T3yZ0jflUtliV@secra.localdomain>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hi,

I’d like to take on updating the copy_file_range(2) man page to reflect that
glibc no longer provides a user-space fallback after version 2.30, per Bugzilla #220489.

Wes Gibbs
wg21908

