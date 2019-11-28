Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B7C2910C97A
	for <lists+linux-man@lfdr.de>; Thu, 28 Nov 2019 14:31:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726569AbfK1NbF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 28 Nov 2019 08:31:05 -0500
Received: from youngberry.canonical.com ([91.189.89.112]:43673 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726565AbfK1NbE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 28 Nov 2019 08:31:04 -0500
Received: from x4d0d0749.dyn.telefonica.de ([77.13.7.73] helo=wittgenstein)
        by youngberry.canonical.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.86_2)
        (envelope-from <christian.brauner@ubuntu.com>)
        id 1iaJso-0006Ya-AL; Thu, 28 Nov 2019 13:30:58 +0000
Date:   Thu, 28 Nov 2019 14:30:58 +0100
From:   Christian Brauner <christian.brauner@ubuntu.com>
To:     Adrian Reber <areber@redhat.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 1/2] clone.2: tfix
Message-ID: <20191128133057.pr74ytwfglmtlmaj@wittgenstein>
References: <20191128124650.364810-1-areber@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20191128124650.364810-1-areber@redhat.com>
User-Agent: NeoMutt/20180716
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, Nov 28, 2019 at 01:46:49PM +0100, Adrian Reber wrote:
> added two missing parentheses
> 
> Signed-off-by: Adrian Reber <areber@redhat.com>

Seems reasonable to me.
Acked-by: Christian Brauner <christian.brauner@ubuntu.com>
