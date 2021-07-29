Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 069B23D9F51
	for <lists+linux-man@lfdr.de>; Thu, 29 Jul 2021 10:18:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234795AbhG2ISe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 29 Jul 2021 04:18:34 -0400
Received: from Galois.linutronix.de ([193.142.43.55]:42628 "EHLO
        galois.linutronix.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234673AbhG2ISe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 29 Jul 2021 04:18:34 -0400
From:   Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1627546710;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=rLbTCSoY6hKgbo05q/HPzOu0Zybc2k9R8hiuYXVYw/w=;
        b=tNIkIPekNl5xoAuuPdUlNBMAi7QOFdkmaq9TAWkYiyflzEhlFJyUEZKq+f/bF8sRK0DKV7
        sf/BUteqSuJFrNSnK5BXB/YeQtF2GqH/WoV+jbjqYVXwISv5SwaaKfqyRk5EM8rnmmTDeI
        wwiLS4MscfNprUk9BPpywdLmmeh6flEjlXZnCzyhX8EciqsaKoISLHIqtzxCMQ1QFcQLkH
        hQJ1KWlbVvBKLSiT3/FWp7/UrAUuFryXeRqJvd5VHNV1BY3JAp+L7Es3GxkAkCd/uzEXsF
        +h+Th2q6JXqIEuzxly3W0mzmEZLj8FRXtHW7nNEMfUJalLA2LqeAunI+on9a0A==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1627546710;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=rLbTCSoY6hKgbo05q/HPzOu0Zybc2k9R8hiuYXVYw/w=;
        b=e7+yNNeRy+DgLCwtRHMVBZ+T5CyX7NYAl4TSQbJZ1Ozqc5MIds/Vn2IGkNdJwUDT+7ExGw
        a/+/qLTSUUznngCQ==
To:     Kurt Kanzenbach <kurt@linutronix.de>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
        Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
        Kurt Kanzenbach <kurt@linutronix.de>
Subject: Re: [PATCH v1] futex.2: Document FUTEX_LOCK_PI2
In-Reply-To: <20210625101051.1206558-1-kurt@linutronix.de>
References: <20210625101051.1206558-1-kurt@linutronix.de>
Date:   Thu, 29 Jul 2021 10:18:29 +0200
Message-ID: <8735rxjzxm.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, Jun 25 2021 at 12:10, Kurt Kanzenbach wrote:
> FUTEX_LOCK_PI2 is a new futex operation which was recently introduced into the
> Linux kernel. It works exactly like FUTEX_LOCK_PI. However, it has support for
> selectable clocks for timeouts. By default CLOCK_MONOTONIC is used. If
> FUTEX_CLOCK_REALTIME is specified then the timeout is measured against
> CLOCK_REALTIME.
>
> This new operation addresses an inconsistency in the futex interface:
> FUTEX_LOCK_PI only works with timeouts based on CLOCK_REALTIME in contrast to
> all the other PI operations.
>
> Document the FUTEX_LOCK_PI2 command.
>
> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>

Reviewed-by: Thomas Gleixner <tglx@linutronix.de>
