Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 49D1D173B79
	for <lists+linux-man@lfdr.de>; Fri, 28 Feb 2020 16:34:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726971AbgB1PeG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 28 Feb 2020 10:34:06 -0500
Received: from mail-yw1-f45.google.com ([209.85.161.45]:32879 "EHLO
        mail-yw1-f45.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726956AbgB1PeG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 28 Feb 2020 10:34:06 -0500
Received: by mail-yw1-f45.google.com with SMTP id j186so3692976ywe.0
        for <linux-man@vger.kernel.org>; Fri, 28 Feb 2020 07:34:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=galassi-us.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=1CRF6bVr8eKyISt/8ogq7nxdl3UcM4+OIXqqebS68u4=;
        b=RA0aCRM2ZbN/gdjPkyd8OZW/TwtWlZrEKk6E/9/99spLJhq8f8UoHVcjy4wgSD9gg7
         KcOMB/+esrpRE/w+vUWuwBXx145OjfIHdyyOj7X6yYztXA9697k22UfQlYAf4ZMCPFBs
         TbxHGfyIa5qqVYpf4BIF2S/W62HSLp2XyhSx9VJWEas/zSWx5B8KJM+HGC6ekRfIGyck
         iGQsRBYKS4EFaD6RESQn1XI2gzBnmhmkuh4UaX4etZBsLd7iMgFofhV1gf/eobq3EAMC
         WnM+HRnBAnl8unX6v/3Ig0i6bcnNMv+otxDntKIwCDuj93a9OzqwzCS38zYC967jRuMk
         4VIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=1CRF6bVr8eKyISt/8ogq7nxdl3UcM4+OIXqqebS68u4=;
        b=gSgDODIsNjU4bT6/Z8l0eEO1PY3CrEU00oIRpu/nU+1B1jXnO9ZaR1xITfsC/BHKK8
         om8H6tzWZGpcW86GdnBbY/LJUC6iz5RS8ugjNdNDR28ItY4QXjRs8BzpCPzLuGMVQbKb
         pYWqW+Q25uZM7sQEBAJWrsV914WLqEtV9hkA86eekdJj4/NBWb22LwBExYZI2tKrvPg+
         d8Lm5HjE97ZCb8k9rLcSYryehIDy3HdWelUPO7tBGC4EJkT5zmbyjzGnseKnq3NEMFjF
         dWiWwsnUSyimLE9jNDkehCU6I0zZFTFJqA25e8amG9BqBbSRdX9aAnT2hAINlxP8VYOo
         CJFg==
X-Gm-Message-State: APjAAAUzGk/ne8ulf87T750KmrJ7GAIRWwQbIAHfVOXrox8A/pyjT7+/
        b55mPoO4wKhX72uOw+HxSUPoxmJYmOzppH1RfP8COg==
X-Google-Smtp-Source: APXvYqzHJ31QNd9JfIGxqDI3a0hiGNMasRMBtlFBRnTUl0uB6cWhGCWXbfS8wrDfJ07KUOfppvptAOaYNKtGBVnGCws=
X-Received: by 2002:a81:9213:: with SMTP id j19mr3420097ywg.187.1582904045153;
 Fri, 28 Feb 2020 07:34:05 -0800 (PST)
MIME-Version: 1.0
From:   Michael Galassi <michael@galassi.us>
Date:   Fri, 28 Feb 2020 07:33:54 -0800
Message-ID: <CADFiD2+vbh-rhbj3G8z5F46R6cP1BSOVfpFiJju=EM00Q15-Ug@mail.gmail.com>
Subject: small issue in getifaddrs(3) man page
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

The getifaddrs(3) man page has some sample code which includes a for
loop wich initializes and increments an in named "n" which is never
used.  This is slightly confusing (but in no way wrong).  The page
would be clearer if this variable declaration, initialization, and
increment were removed.

The two lines in question are:
           int family, s, n;
...
           for (ifa = ifaddr, n = 0; ifa != NULL; ifa = ifa->ifa_next, n++) {

Thanks.

-michael
