Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 85A9D53F8E5
	for <lists+linux-man@lfdr.de>; Tue,  7 Jun 2022 10:57:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234190AbiFGI5k (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Jun 2022 04:57:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40906 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238832AbiFGI5h (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 7 Jun 2022 04:57:37 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 15D09F3
        for <linux-man@vger.kernel.org>; Tue,  7 Jun 2022 01:57:30 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id C6123B81E05
        for <linux-man@vger.kernel.org>; Tue,  7 Jun 2022 08:57:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 393FCC385A5;
        Tue,  7 Jun 2022 08:57:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1654592247;
        bh=oJiJdkf5BzzMJEGr3as5463kyHE+4WSbpPQhz+1smyo=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=ka1rMr8vEhuTWImnl+XdK/aBdZLv49hTg7uKh+F3b7z9g7ERs0i2Qn1JviI8mwBQt
         RN7TTHVtSTIRpovGCTm/4cBl+Qz93N94gRLtRUKrqGmazDiDKb+6Ev+4RB/B9modnO
         VhCsOOpFUHqtrdsNXud2RLSd671xhlD/ETg97cYrQehQH62sMX/4ArnRUwW9Cp8acE
         2x6ZwEb0f6lzd98L5hZme8PuRpQf4SIIfoHnlaNIPxWEhZTgbJE3hcjGEwMIkU6yR2
         Noj8N6HJFkiXYtFn/Qt70sPKoZbMQnQoDsQxFLaUWXbXlCxi/dSgerMCvvYs3T8+my
         BJapbFBej4Q2Q==
Date:   Tue, 7 Jun 2022 10:57:18 +0200
From:   Christian Brauner <brauner@kernel.org>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Stephen Kitt <steve@sk2.org>,
        Christian Brauner <christian.brauner@ubuntu.com>,
        linux-man@vger.kernel.org,
        "Joseph C. Sible" <josephcsible@gmail.com>
Subject: Re: close_range.2: misleading what CLOSE_RANGE_UNSHARE unshares
Message-ID: <20220607085718.g62aqeqtnwpdhmma@wittgenstein>
References: <CABpewhHabbxi=+h+pXbSBnwmbkpaZvCo5Vm3vujMg4UvxhtmkA@mail.gmail.com>
 <e822f3f2-adad-ce03-712b-1b0f6a3edb31@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <e822f3f2-adad-ce03-712b-1b0f6a3edb31@gmail.com>
X-Spam-Status: No, score=-8.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, Jun 06, 2022 at 08:59:30PM +0200, Alejandro Colomar wrote:
> Hi Stephen and Christian!
> 
> On 6/2/22 06:22, Joseph C. Sible wrote:
> > The DESCRIPTION section of close_range.2 makes it sound like
> > CLOSE_RANGE_UNSHARE will only unshare the file descriptors that you
> > specified for it to close, but unsharing actually operates at the
> > granularity of the file descriptor table, so any FDs that remained
> > open as well as any opened in the future will be unshared too.
> 
> Could you please have a look at this report?

The NOTES section explains the workings of this flag in detail. Maybe
link to it from DESCRIPTION.
