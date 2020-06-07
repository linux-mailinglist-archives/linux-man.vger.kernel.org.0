Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E1AE91F0B16
	for <lists+linux-man@lfdr.de>; Sun,  7 Jun 2020 14:24:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726447AbgFGMYi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 7 Jun 2020 08:24:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52494 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725886AbgFGMYi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 7 Jun 2020 08:24:38 -0400
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com [IPv6:2607:f8b0:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DEC6DC08C5C2
        for <linux-man@vger.kernel.org>; Sun,  7 Jun 2020 05:24:36 -0700 (PDT)
Received: by mail-pf1-x441.google.com with SMTP id 64so398616pfv.11
        for <linux-man@vger.kernel.org>; Sun, 07 Jun 2020 05:24:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mbobrowski-org.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=VSmDQ/MKvJMj3AKN0Ftw4OsEgYSfIZQnh0DOXpmo2h4=;
        b=tnZyDca+8Hi77uALbt4zFHZ0QAMfgNhFBacHzHnQWI0dlaZo/ESFyOxCGMscT0Vah+
         IyXJvz5KP2pk+jv6BlChjMQorYadPuZUbHITY4UDi1niZNSbtdfM7Vgj9pKHrwy5hXvi
         PGSzJUrjFl26aDoPPD8NSZvLqRF2t3crzwhbqMAn7/0Sh7YMMCpS/xM/WyTXQljQSZ7L
         ArDT2fFlw19+iiw1IjK3LKxhxcOYyhwigLNzx3a7lcOUD6lsDwQRj8qCjA5m86H6sQCc
         Nrf7U+p4/zckO0GkEkcFVSxXbbUwWjK8OCb+mpWQGypvCSrABSETrs5Y8nP0LqMKS4Iq
         /D0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=VSmDQ/MKvJMj3AKN0Ftw4OsEgYSfIZQnh0DOXpmo2h4=;
        b=VZ7s+MULkyyxHToRK9YsGjjh68oionkzVbsDOJkXp4zRBEzNFjROtYuZW+bs7a4n+m
         PpJrq+rCF+JeAKlNtyacJp0YmIvrH+L8wAh8GJ9Y8w2uFvNQzNT6eWDTRP12IJAPc/3W
         0rWcMfRYjeNgLb3Wa3hujzbFDTXmRrp63gCrPsD+BfRUDBdJOp0EUeHBOMxKSOPJvRLu
         TUgqvG0HlWtITyjlHejgZ/kBUqne+xrvuxDreKx+sh+gSY+42VTxqHd/Q6ra7wsr19y8
         nZGgUse0CA+mG+XvKACap9YvpA565WYSqvrSq1skpyhHi2J8HbAJcYZNNyww0pIn8AtX
         aIRw==
X-Gm-Message-State: AOAM533+1Vy1Q1BUN7DjeREK4JztMM2YO2NiM90Xl8N1rrNmcgC8p5CX
        iicoIWcoe2W+hSS8kdf5FC1F
X-Google-Smtp-Source: ABdhPJzJYo/HRNdSXNpgW8HX5jsBDO9QnMqUIcWPwCj+YqB/ZoNZBiL0wQ953VH1gHTeSAGU7d/44A==
X-Received: by 2002:aa7:9297:: with SMTP id j23mr17068890pfa.15.1591532675588;
        Sun, 07 Jun 2020 05:24:35 -0700 (PDT)
Received: from mail.bobrowski.net (mail.bobrowski.net. [112.213.34.247])
        by smtp.gmail.com with ESMTPSA id a11sm752765pff.39.2020.06.07.05.24.33
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 07 Jun 2020 05:24:34 -0700 (PDT)
Date:   Sun, 7 Jun 2020 22:24:30 +1000
From:   Matthew Bobrowski <mbobrowski@mbobrowski.org>
To:     Amir Goldstein <amir73il@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, Jan Kara <jack@suse.cz>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 2/3] fanotify_init.2: move out of place entry
 FAN_REPORT_FID
Message-ID: <20200607122430.GB4886@mail.bobrowski.net>
References: <20200529092530.25207-1-amir73il@gmail.com>
 <20200529092530.25207-3-amir73il@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200529092530.25207-3-amir73il@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, May 29, 2020 at 12:25:29PM +0300, Amir Goldstein wrote:
> It was inserted in the middle of the FAN_CLASS_ multi flags bit and
> broke the multi flag documentation.
> 
> Signed-off-by: Amir Goldstein <amir73il@gmail.com>

Nice, thank you for tidying this up Amir! Looks good to me.

Reviewed-by: Matthew Bobrowski <mbobrowski@mbobrowski.org>

/M
