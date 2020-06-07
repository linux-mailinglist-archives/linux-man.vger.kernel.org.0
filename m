Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6EF981F0B22
	for <lists+linux-man@lfdr.de>; Sun,  7 Jun 2020 14:40:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726455AbgFGMkQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 7 Jun 2020 08:40:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54906 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726447AbgFGMkQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 7 Jun 2020 08:40:16 -0400
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com [IPv6:2607:f8b0:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC88DC08C5C2
        for <linux-man@vger.kernel.org>; Sun,  7 Jun 2020 05:40:15 -0700 (PDT)
Received: by mail-pf1-x444.google.com with SMTP id x22so7271288pfn.3
        for <linux-man@vger.kernel.org>; Sun, 07 Jun 2020 05:40:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mbobrowski-org.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=1FUA0581zba8MACGjVmq5uYNCoTcmLnROStouCerRk0=;
        b=pf2hFp8I0BxccgcRoEQtALVZFjDet4+SQm1v91DWWc1Wf3Fex8x3TQa6x4J5l2exSK
         ukBcgw18pf1nJExEEv0RolKT0kl+F4hS12Uq7zOu50qeZk1B54dqMWL5JexAXsDpyx5Y
         MLoxUXDE8BDurHNqvNVv+Q46+pz7EGxpT3ddcg6DkYrSENBMN8/RsW35jsgo6l6I7UAe
         dHHKtRPioH1Rf+0AAA2+m5y59X6LJeFDtep83uiirGd0c2Gnoc8kOpn0Qr/J6pgFbFu4
         twKEinFSpXUyDAuvW+2FWCB62Hx8s7Ok8nPcpZzTEvSBFLLcqfKHYJx8E6L8vRDd0Xfk
         J9Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=1FUA0581zba8MACGjVmq5uYNCoTcmLnROStouCerRk0=;
        b=ND88dP5orZAYfconT9IMh3WkJTSoTGuLDqybcGATc5RiP/mXSbNzSAKLLFPXAwcoFg
         LwfBkO0+vgI7/fslnPWCZP2HarRESe0cqN+3WUUKK8ZsZ1QaKRwRKFdr0BIG4ya7pkK3
         U5rd4m2e9yND5JRESuGPWkUEtFRkBUCTr2+GfxXrKr9uu76sVYBve+8Y3ZnjVRMvZzWi
         kn/J2+b/+5Je4FJdvFzlvLqGidn8kiRljkNT4v0kLb16c/oliexTW6KdlaTTWR72wIUv
         z8fSa9w8eY7BcCvYG07GveRLp6IZ0SQoZpmh3WCbB/FOYWIfaa26illqfTNhyYbS4+IF
         KVzQ==
X-Gm-Message-State: AOAM530OObnwmvs0Nx0E+Yev8PhY3qoNPA/qu2i2xVAE9NVs8grABX1E
        kwJCovDCoFPd3un7dB6Pz8K9
X-Google-Smtp-Source: ABdhPJxEIVU8gRdTcnv2oo2W8n6PYeGaPVYt3TIiUIBlhdOird4UGWB/4XVuvh1Qx4BIUy7n18oSxw==
X-Received: by 2002:a63:7353:: with SMTP id d19mr17377436pgn.239.1591533615136;
        Sun, 07 Jun 2020 05:40:15 -0700 (PDT)
Received: from mail.bobrowski.net (mail.bobrowski.net. [112.213.34.247])
        by smtp.gmail.com with ESMTPSA id 207sm4340905pfw.190.2020.06.07.05.40.12
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 07 Jun 2020 05:40:14 -0700 (PDT)
Date:   Sun, 7 Jun 2020 22:40:09 +1000
From:   Matthew Bobrowski <mbobrowski@mbobrowski.org>
To:     Amir Goldstein <amir73il@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, Jan Kara <jack@suse.cz>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 3/3] fanotify.7, fanotify_mark.2: Clarify FAN_ONDIR in
 output mask
Message-ID: <20200607124009.GC4886@mail.bobrowski.net>
References: <20200529092530.25207-1-amir73il@gmail.com>
 <20200529092530.25207-4-amir73il@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200529092530.25207-4-amir73il@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, May 29, 2020 at 12:25:30PM +0300, Amir Goldstein wrote:
> FAN_ONDIR has been an input only flag before introduing FAN_REPORT_FID.
> With FAN_REPORT_FID it can also be in output mask.
> 
> Move the text describing its role in output mask to fanotify.7 where the
> other output mask bits are documented.
> 
> Signed-off-by: Amir Goldstein <amir73il@gmail.com>

This also looks good to me!

Reviewed-by: Matthew Bobrowski <mbobrowski@mbobrowski.org>

/M
