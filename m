Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 14D6A1ED9B4
	for <lists+linux-man@lfdr.de>; Thu,  4 Jun 2020 01:59:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726533AbgFCX5d (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 3 Jun 2020 19:57:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59542 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726170AbgFCX5c (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 3 Jun 2020 19:57:32 -0400
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com [IPv6:2607:f8b0:4864:20::1043])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47008C08C5C0
        for <linux-man@vger.kernel.org>; Wed,  3 Jun 2020 16:57:30 -0700 (PDT)
Received: by mail-pj1-x1043.google.com with SMTP id nm22so280140pjb.4
        for <linux-man@vger.kernel.org>; Wed, 03 Jun 2020 16:57:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mbobrowski-org.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=bvhGTqBjM8C9S6KRcKfgA/zPMUXxP+hfaYnmKz+3FxA=;
        b=wSuZMI0A0EpBDSgE562AnhEGL8+5uk9Rl6RfN/ByqSmJdudmMOj7/NLXIYs7VqAVub
         djKp33RkcUjHyoIl80FHvTexaoZmVLLHCyYtatlUwqUnIm2v9TzqU/P9pDNHIEww/Y9y
         PEeEgqk5VpSJf+3gR7B3makMgxfH1F5D90ERF4rp7QrCip3DibD9fmy9cCbrXzbYiwPX
         sfWkWVpFUN6N8RzYWF7nUxOYj9DG7UqqL1NxIMj0HMXSrm1o8hM3Hsyo4BlT7R9lhY2Y
         q/FrWFANqVQunp6OwCufH5s0cCrf/J8Kx4cl/Hkh+1im1suhWE9XCYYvizlI2cvvrK3G
         jFRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=bvhGTqBjM8C9S6KRcKfgA/zPMUXxP+hfaYnmKz+3FxA=;
        b=soOreusQJIUaPsMonVSBEbQLX7pb9St1FjwzXd58XgiG7DGT3avE/erKAQzLuvimW2
         M1S8BfxY+MPDeBSJwJUp+cqyStfd/yY/iAHtTQVu+35AZldOPKO44ebYlC50vZojugHH
         80u/bP6TqMRvIjj6P4fI0fGCd+s22/urWFMpEidWwW2PKmL2/4y0d0oCJ9/qj1+OqrFc
         /3GDLeoZWoWv4+CKd+fm/wiWy3WLCfY4D5ZUFOLMWpnNtQE2hXGrqFjxIodl3Qtffsqk
         ZC5WC5+xOdvF5ldIPa+LhlSuvTL44kU3PkfgYEb86u8JQFA5/1GGn3ZkznDXOXlEpskx
         2A6Q==
X-Gm-Message-State: AOAM532fvaiRhf7mPadQIW5fQZIrSylYnMiQpYiEVqsQ+KLEYyVpBUzH
        /V8XpZom6hPYNYnbEcc1s3Bz3s8XNw==
X-Google-Smtp-Source: ABdhPJwdow0RSb/YWmdZJJi31hWnMAlkXAXIUhnvp+VIJ82pOqYLcK0CbxZpQQ5o1JSRkoT4wht4ag==
X-Received: by 2002:a17:902:7083:: with SMTP id z3mr2017951plk.143.1591228649671;
        Wed, 03 Jun 2020 16:57:29 -0700 (PDT)
Received: from mail.bobrowski.net (mail.bobrowski.net. [112.213.34.247])
        by smtp.gmail.com with ESMTPSA id d7sm1115395pfh.78.2020.06.03.16.57.26
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Jun 2020 16:57:28 -0700 (PDT)
Date:   Thu, 4 Jun 2020 09:57:23 +1000
From:   Matthew Bobrowski <mbobrowski@mbobrowski.org>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     Amir Goldstein <amir73il@gmail.com>, Jan Kara <jack@suse.cz>,
        linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH 0/3] fanotify man page updates for final v5.7
Message-ID: <20200603235723.GA19624@mail.bobrowski.net>
References: <20200529092530.25207-1-amir73il@gmail.com>
 <CAKgNAkgfrSbAnCV=JJWh3ELH9PDTjidn=cJ4s77gtffdj5hU-w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKgNAkgfrSbAnCV=JJWh3ELH9PDTjidn=cJ4s77gtffdj5hU-w@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, Jun 03, 2020 at 12:26:10PM +0200, Michael Kerrisk (man-pages) wrote:
> On Fri, 29 May 2020 at 11:25, Amir Goldstein <amir73il@gmail.com> wrote:
> >
> > Hi Michael,
> >
> > We made a last minute call to disable the FAN_DIR_MODIFY for v5.7.
> > Here is a man page update with some promissed cleanups.
> 
> Thanks, Amir. I'll just hold off a little longer on processing these,
> in case there are Acked-bys / review comments.

Sure, please do. I'm intending to get around to reviewing this series by the
end of the week. 
 
/M
