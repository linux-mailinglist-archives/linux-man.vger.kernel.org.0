Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E25F3511704
	for <lists+linux-man@lfdr.de>; Wed, 27 Apr 2022 14:46:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234585AbiD0Mry (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 27 Apr 2022 08:47:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51352 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234583AbiD0Mry (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 27 Apr 2022 08:47:54 -0400
X-Greylist: delayed 1146 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Wed, 27 Apr 2022 05:44:40 PDT
Received: from ns4.inleed.net (mailout4.inleed.net [IPv6:2a0b:dc80:cafe:104::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23E8925D002
        for <linux-man@vger.kernel.org>; Wed, 27 Apr 2022 05:44:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=protohuf.com; s=x; h=To:Message-Id:Date:Mime-Version:From:
        Content-Transfer-Encoding:Content-Type:Sender:Reply-To:Subject:Cc:Content-ID:
        Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
        :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
        List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=1CAlaC5/uz3/8cHN+4RkU4LaYcXn00cKQfmSoXcPa5g=; b=bDbNqrN8xR5SOfMhlYOcNc6JuC
        DUckpUVEncWyu5N26zbDRr/4mDiSygcSWHXd4SRce2LKXzgdrFcOOvTrb6gTrh2qbHFtcC1uNBbUD
        bcP2hJCgLiFTabq3QDRO/sCg5N7u1e2oELQlAqAFGf4tKIPE8sHpJL+OGs1MfKoSTBHR1DEkZZv5n
        8Xk9OG+UFLP1W5bwBqyYazmgEjqKfuq9yJHlopRIfIEwwxCwksXqblDJK4GYDESQ5bMj4kUe5Xy7G
        vygJ1s/EtQm2BX+m1HfnvD54oOUpy6hGiuyyl/s7D2fk0zldDqLkXUrfpApki6JnfP2yJ5OFyqLUV
        W3aY4TEQ==;
Received: from 81-237-153-63-no71.tbcn.telia.com ([81.237.153.63] helo=smtpclient.apple)
        by ns4.inleed.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256
        (Exim 4.95)
        (envelope-from <mh@protohuf.com>)
        id 1njgjg-0073pl-Dv
        for linux-man@vger.kernel.org;
        Wed, 27 Apr 2022 14:25:36 +0200
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
From:   Marcus Hufvudsson <mh@protohuf.com>
Mime-Version: 1.0 (1.0)
Date:   Wed, 27 Apr 2022 14:25:30 +0200
Message-Id: <3ABE2CCC-F37E-4920-BDD4-7F3BEDF2945F@protohuf.com>
To:     linux-man@vger.kernel.org
X-Mailer: iPhone Mail (19E258)
X-Authenticated-Id: mh@protohuf.com
X-Spam-Status: No, score=1.6 required=5.0 tests=BAYES_40,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,MISSING_SUBJECT,SPF_HELO_PASS,
        SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

unsubscribe linux-man
