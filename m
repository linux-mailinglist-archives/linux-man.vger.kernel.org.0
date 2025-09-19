Return-Path: <linux-man+bounces-3888-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C10CB89291
	for <lists+linux-man@lfdr.de>; Fri, 19 Sep 2025 12:54:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 169645829A8
	for <lists+linux-man@lfdr.de>; Fri, 19 Sep 2025 10:54:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CF03309DDD;
	Fri, 19 Sep 2025 10:54:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="UxpymRh0"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43BA730B52A
	for <linux-man@vger.kernel.org>; Fri, 19 Sep 2025 10:54:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758279250; cv=none; b=Uf9I3hX5HHySdG8QNNi6g3AwvSpL7t1XF+ucD2z8ppyzTrZhmqAyOm4wVoiADeyjGCKeaOpSM9j+KU1rD6gSAR9lZUMpX/SlLpI+3dldcpzdtiONzOLP0X+VPmR3ADGmtnqkxAqGVBXxmu5tco5CRmUmL7Lj6cArXfG8IbZi5x8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758279250; c=relaxed/simple;
	bh=gvU7nonxyUIFeGSnqYq0JJ/bDGcBc5vHxrHdDZ7Egnk=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=r4t/8xOqPWKI+a9npJH4y3ssAXTTJx/QTp+yFfyXHKpZosSEUPl+Lbbfmq/s4bKe3hq4NAaSrZZDKXXzk+Z/AUwix/HSc6A6Rv0wjbyWM63ABfbAcNuhucDFxKjf5IANC/UIEpE9rIPI/9somo/InNK9v04HY/S5BqWE42atEPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=UxpymRh0; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1758279247;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=t578TyAIDs2gL19bJBS9sOIYMfxTCAxsvTpOQGBzQEI=;
	b=UxpymRh0BhojtLPm6lhl6TNI1JvkMBMhnaRvogQx89dvX/Hm8Yxm+BRzZchJRPdaSMLFpD
	ppY+wj8rOV7Ic+e/YmXtQnudYeirteJ9llWkywy17sKooZVbp8jiGNSTX3SN+U3CaoU3iK
	PZcDo2VLkTHfQyZpBtKdRC+wLrr0XPE=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-30-Bj_70r7EPzylql320fyPuA-1; Fri, 19 Sep 2025 06:54:00 -0400
X-MC-Unique: Bj_70r7EPzylql320fyPuA-1
X-Mimecast-MFC-AGG-ID: Bj_70r7EPzylql320fyPuA_1758279240
Received: by mail-wm1-f70.google.com with SMTP id 5b1f17b1804b1-45f29c99f99so12378915e9.1
        for <linux-man@vger.kernel.org>; Fri, 19 Sep 2025 03:54:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758279239; x=1758884039;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=t578TyAIDs2gL19bJBS9sOIYMfxTCAxsvTpOQGBzQEI=;
        b=v31FB7D2QmCeuQvatuX+aYuxpttpSmLZ0u3ydwotFpHSCwyHtlwcWJ60PpEKSHzxan
         cHjFxuzL2Va5szrgyJvidDuwrkYTKLbJWQmfGAwtwyCazZGthjx9ahduY5hhDIr3I4ch
         BAotJnOjVCYhmZgqtxEYu5agdWLw7FWDXoB00dN4/vWOSvXWQ1K7kx7Dag/xU5wXgsA+
         dYRxPiwZ3+M7FNQUDJ+oLlRClilFfUS6f5DVMWSzgN2OoEUG6dOSouw2HrWx7R6JFAqF
         JusPSWp9JSLdRPRbuEPlCw20kry/dXcCXPOieJFyuuiljSzEKoKMYmFjSta7qXeABB5W
         E9Kg==
X-Gm-Message-State: AOJu0YzeqFzCwXq7VMQsnSvEuHJvWUv1D9dOv8mCl//wgdf1ND1iDEew
	m/1/lTrSkZaGobQeLl1YNiYLt4xoubHDoPr4GzTM87t7KdcBPgT0hvcBf587+OZYVz6yw+qpXUO
	/RYE6o3cfbPbIokUjgecwQ+OLKI+1YAQcAlYLWxZidbSwbBYrFuZUShWEVRzHzbugvhB4fw==
X-Gm-Gg: ASbGncvJDZlzerYeMu1d97q5FgNs/AruJvcmQlx7vmpFmbJq4MfgsvXlKaaQPSMQwBr
	qDx2k9rzxxi807p9M1hY2Rtr8//fdS/d/G/1hs7a9xNCN/eOho3Oc4PJxcAlwHuimpXvI0J9c9r
	BeCAkdIpzkSKSuXnjmLV2J1YQRQosndeOwurDzG72WcAuPqNm/Z8t2CzCA5s5qNU30Tz3+WhbCV
	ZKYPe0FgeDburhTnjKyWOzfJCOZwVp2LWUtt6pwhyUkRyrOHodIkunP39rIyHlGpW6V9gEf+ErP
	5FxG/ekyqclpzlenX2mVVGdxvmIsiMF18NH4AsNmaTdC7kdZW3ENjdNmrsMV1lipkOALaJVENob
	S+ipWnExQoQWYWKMmaxk=
X-Received: by 2002:a05:600c:4692:b0:45b:6275:42cc with SMTP id 5b1f17b1804b1-467ebbbfcccmr22306565e9.28.1758279238857;
        Fri, 19 Sep 2025 03:53:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE7BGxdF2Io5wGs6tVmngeYSgMZmJwckHDlQs6tWSdZMQAw+hmWXAFON39p4nUogmYOP3SUXw==
X-Received: by 2002:a05:600c:4692:b0:45b:6275:42cc with SMTP id 5b1f17b1804b1-467ebbbfcccmr22306285e9.28.1758279238424;
        Fri, 19 Sep 2025 03:53:58 -0700 (PDT)
Received: from debian (2a01cb058918ce0086a938fffe1eee25.ipv6.abo.wanadoo.fr. [2a01:cb05:8918:ce00:86a9:38ff:fe1e:ee25])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3ee0fbc7410sm7356599f8f.35.2025.09.19.03.53.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 03:53:57 -0700 (PDT)
Date: Fri, 19 Sep 2025 12:53:55 +0200
From: Guillaume Nault <gnault@redhat.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH] rtnetlink.7: Document metrics attributes (RTAX_*).
Message-ID: <550b1d8804698e9d71addb08a2bb377578c9c719.1758279191.git.gnault@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Add a brief explanation of the RTAX attributes that can be used in
RTA_METRICS.

Signed-off-by: Guillaume Nault <gnault@redhat.com>
---
 man/man7/rtnetlink.7 | 49 +++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 48 insertions(+), 1 deletion(-)

diff --git a/man/man7/rtnetlink.7 b/man/man7/rtnetlink.7
index cb9f5155f..a04edce79 100644
--- a/man/man7/rtnetlink.7
+++ b/man/man7/rtnetlink.7
@@ -342,7 +342,11 @@ RTA_OIF:int:Output interface index
 RTA_GATEWAY:protocol address:The gateway of the route
 RTA_PRIORITY:int:Priority of route
 RTA_PREFSRC:protocol address:Preferred source address
-RTA_METRICS:int:Route metric
+RTA_METRICS::T{
+Route metrics
+.br
+(see below).
+T}
 RTA_MULTIPATH::T{
 Multipath nexthop data
 .br
@@ -384,6 +388,49 @@ routes (in seconds)
 T}
 .TE
 .IP
+.B RTA_METRICS
+contains an array of
+.I struct rtattr
+with their corresponding attributes:
+.IP
+.in +4n
+.TS
+tab(:);
+c s s
+lb l l.
+Attributes
+rta_type:Value type:Description
+_
+RTAX_UNSPEC:-:unspecified
+RTAX_LOCK:__u32:Bit field indicating which RTAX_* attributes are locked
+RTAX_MTU:__u32:Maximum Transmission Unit for this route
+RTAX_WINDOW:__u32:Maximum size of the receive window for this route
+RTAX_RTT:__u32:Estimated round-trip time for this route
+RTAX_RTTVAR:__u32:Estimated round-trip time variation for this route
+RTAX_SSTHRESH:__u32:Slow start threshold to use for this route
+RTAX_CWND:__u32:Maximum size of the congestion window for this route
+RTAX_ADVMSS:__u32:Maximum Segment Size to advertise for this route
+RTAX_REORDERING:__u32:Initial reordering level of packets for this route
+RTAX_HOPLIMIT:__u32:Hop limit (TTL) to use for this route
+RTAX_INITCWND:__u32:Initial congestion window to use for this route
+RTAX_FEATURES:__u32:Features to enable for this route specifically
+RTAX_RTO_MIN:__u32:Minimum Retransmission TimeOut to use for this route
+RTAX_INITRWND:__u32:Initial size of the receive window for this route
+RTAX_QUICKACK:__u32:Use quick ack for this route
+RTAX_CC_ALGO:asciiz string:Congestion Control algorithm to use for this route
+RTAX_FASTOPEN_NO_COOKIE:__u32:Allow TCP Fast Open without cookie
+.TE
+.IP
+Metrics that are locked with
+.B RTAX_LOCK
+take precedence over the values normally used by the kernel
+(computed or assigned by a sysctl or setsockopt(2)).
+Therefore, some metrics, like
+.BR RTAX_RTO_MIN ,
+have no effect unless their bit is set in
+.BR RTAX_LOCK .
+.in
+.IP
 .B RTA_MULTIPATH
 contains several packed instances of
 .I struct rtnexthop
-- 
2.47.3


