Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B20B87C57D6
	for <lists+linux-man@lfdr.de>; Wed, 11 Oct 2023 17:13:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232023AbjJKPNO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 11 Oct 2023 11:13:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48718 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230191AbjJKPNO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 11 Oct 2023 11:13:14 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CD00A94
        for <linux-man@vger.kernel.org>; Wed, 11 Oct 2023 08:13:12 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 14876C433C9;
        Wed, 11 Oct 2023 15:13:10 +0000 (UTC)
Date:   Wed, 11 Oct 2023 16:13:08 +0100
From:   Catalin Marinas <catalin.marinas@arm.com>
To:     Florent Revest <revest@chromium.org>
Cc:     alx@kernel.org, linux-man@vger.kernel.org, joey.gouly@arm.com,
        akpm@linux-foundation.org, keescook@chromium.org
Subject: Re: [PATCH v2] prctl.2: Document PR_SET_MDWE and PR_GET_MDWE
Message-ID: <ZSa7hO2B5oQS6a_-@arm.com>
References: <20231011114744.2563619-1-revest@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231011114744.2563619-1-revest@chromium.org>
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,
        SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, Oct 11, 2023 at 01:47:44PM +0200, Florent Revest wrote:
> Memory-Deny-Write-Execute is a W^X process control originally introduced
> by Joey Gouly. I'm the author of the PR_MDWE_NO_INHERIT flag.
> 
> Signed-off-by: Florent Revest <revest@chromium.org>

Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
