Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A9F6F1BE2AA
	for <lists+linux-man@lfdr.de>; Wed, 29 Apr 2020 17:26:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726654AbgD2P0i (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 29 Apr 2020 11:26:38 -0400
Received: from esa3.hc253-53.ap.iphmx.com ([139.138.31.193]:30078 "EHLO
        esa3.hc253-53.ap.iphmx.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726539AbgD2P0h (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 29 Apr 2020 11:26:37 -0400
X-Greylist: delayed 430 seconds by postgrey-1.27 at vger.kernel.org; Wed, 29 Apr 2020 11:26:35 EDT
IronPort-SDR: fWwrSSAcERJExBcqjVM9GUDZiJy3boehJa6agHl3WRB1OeyD/1YbgXKijjCRR4kpZURxjsQkX5
 EsTm/yrX9TGrMnSXAl8ErA0eKPS0nIPyZ35l8Rklt3YeKGwNFH3qRAoFP26lDaz1160VUMCHO7
 hsz6gafMa7myhFZjabH88c8hKtnxLVeXrOHjafe0zKcGkLVNwwuVfMTooWS8bAFCK4i0rMul27
 jrqlaq2FaTS50m6r4wUpXIJux+0FZ3M9vlRgjJvnJfOdqTVWyPStauUaXEwvpxa+U/JtstlPBy
 WtA=
IronPort-PHdr: =?us-ascii?q?9a23=3Ah7VoUxJ371HbOKqAJdmcpTZWNBhigK39O0sv0r?=
 =?us-ascii?q?FitYgeLfjxwZ3uMQTl6Ol3ixeRBMOHsq8C1bGd4/2ocFdDyK7JiGoFfp1IWk?=
 =?us-ascii?q?1NouQttCtkPvS4D1bmJuXhdS0wEZcKflZk+3amLRodQ56mNBXdrXKo8DEdBA?=
 =?us-ascii?q?j0OxZrKeTpAI7SiNm82/yv95HJbAhEmTqwbalzIRi4ognctckbipZ+J6gszR?=
 =?us-ascii?q?fEvmFGcPlMy2NyIlKTkRf85sOu85Nm7i9dpfEv+dNeXKvjZ6g3QqBWAzogM2?=
 =?us-ascii?q?Au+c3krgLDQheV5nsdSWoZjBxFCBXY4R7gX5fxtiz6tvdh2CSfIMb7Q6w4VS?=
 =?us-ascii?q?ik4qx2ThLjlSUJOCMj8GzPhMJ+jLxVrg+iqRNxzIHbfJqYNOZicq/BYd8WWX?=
 =?us-ascii?q?BMUthXWidcAo28dYwPD+8ZMOhWtYb9uVoOogajDgSwGezg0DpIjWLx0Kw7ye?=
 =?us-ascii?q?shFx3J3Aw+ENMOq3nUscn6O7sIXeC60anE1yjDbv1M1jvn9ofHbw0hreuWUr?=
 =?us-ascii?q?JtaMfcz1QkGAzZgFuKs4PlIy+V2foXs2id9+dtWv+jhmAjpgxzvjWix8ghh5?=
 =?us-ascii?q?fXi48U113J6yZ0zYg0KNGmS0N2YMKoHZpMuyyUN4Z7TMcvT3xstSs017ELto?=
 =?us-ascii?q?O2cS4Xw5ok3x7Sc+GLfoaU7h75UOucIS10iG97dL+8nRq+71Ssx+/kWsWp3l?=
 =?us-ascii?q?tGsjBJn93Mu3wXyhDe5NKLR/l780y8wziAzRrT5ftBIU0skKrbLIMuzaAom5?=
 =?us-ascii?q?oItETDAjf2mELrjK+Kbkkk+van6+DgYrj+o5+cMIh0igfgPaUuhMOzG/k4PR?=
 =?us-ascii?q?QSUGSB9uS8yafv/VD3QbpQlPE5jLTWsI3AKcsBu661Gw5V0oA95BajFzqqzd?=
 =?us-ascii?q?oVkWUdIF9BeB+LlZXlN0/NLfziE/uzn1ahnC9ux//cP73hBpvNLmLEkLfkZb?=
 =?us-ascii?q?t86lRTyAwvwtBf+Z1VCqoMIO/vVUDtrtDYAQI5Pxapw+fpEtpxzJ0RVn+SAq?=
 =?us-ascii?q?ODKqzSrEeE5vgzLOmUeI8VpDH9JuAh5/7vi385hFAccbCs3ZQNbnC1BepmI0?=
 =?us-ascii?q?qHbnr2mNsBEnkFvhA4TOP0jF2OSzlTZ2y9X/F02jZuDZ6lS4LKQJikj7Ga9C?=
 =?us-ascii?q?i+F5xSIGtBDwOiC3DtIqmNRfYAIAueK8opxi4NU7OhRp4JyBql8gDnjad4J6?=
 =?us-ascii?q?zZ9jBevI+1h4s93PHaiRxnrW88NM+ayWzYF2w=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2FJAgAWmqlemM+AX4JmHgEBCxIMQIE?=
 =?us-ascii?q?8C4NtAR8SKo0ihkwGgRKKKY9bgXsCCQEBAQEBAQEBAQgvBAEBAoRCglQ2Bw4?=
 =?us-ascii?q?CAwEBAQMCBQEBBgEBAQEBAQQEAQECEAEBAQEBCAsLBikLAQEHCgIBhE4hBAE?=
 =?us-ascii?q?BBQoBNwyCOyJ3fgEBAQEBAQEBAQEBAQEBAQEBAQEWAhRUZBYoBgEBNwGBDEQ?=
 =?us-ascii?q?igwSCWCWldAGBKD4CIwE/AQyBBYl+gTSDAAEBBYYNCYFECYE4iyOBOHmBB4F?=
 =?us-ascii?q?EiDaFJZlFmHSCTwSYIIJKAZo8rTqBWQdVgS0zGggXGYMkUBgNkjsaghKMKTQ?=
 =?us-ascii?q?BMgI0AgYIAQEDCZJqAQE?=
X-IPAS-Result: =?us-ascii?q?A2FJAgAWmqlemM+AX4JmHgEBCxIMQIE8C4NtAR8SKo0ih?=
 =?us-ascii?q?kwGgRKKKY9bgXsCCQEBAQEBAQEBAQgvBAEBAoRCglQ2Bw4CAwEBAQMCBQEBB?=
 =?us-ascii?q?gEBAQEBAQQEAQECEAEBAQEBCAsLBikLAQEHCgIBhE4hBAEBBQoBNwyCOyJ3f?=
 =?us-ascii?q?gEBAQEBAQEBAQEBAQEBAQEBAQEWAhRUZBYoBgEBNwGBDEQigwSCWCWldAGBK?=
 =?us-ascii?q?D4CIwE/AQyBBYl+gTSDAAEBBYYNCYFECYE4iyOBOHmBB4FEiDaFJZlFmHSCT?=
 =?us-ascii?q?wSYIIJKAZo8rTqBWQdVgS0zGggXGYMkUBgNkjsaghKMKTQBMgI0AgYIAQEDC?=
 =?us-ascii?q?ZJqAQE?=
Received: from f5-new.net.uwa.edu.au (HELO mooneye.ucc.gu.uwa.edu.au) ([130.95.128.207])
  by esa3.hc253-53.ap.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Apr 2020 23:19:23 +0800
Received: by mooneye.ucc.gu.uwa.edu.au (Postfix, from userid 801)
        id B5E453C077; Wed, 29 Apr 2020 23:19:22 +0800 (AWST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=ucc.gu.uwa.edu.au;
        s=ucc-2016-3; t=1588173562;
        bh=BQ9l6t59THpnqf5f4rHtKKK1nkMAJWjSVnXIVkRTcLA=;
        h=Date:From:To:cc:Subject:From;
        b=l1xJHSL38mw3iuJkX43tygkHxWt10lrL2C1Bjr4XJ6pnlLCmrJVCDFTw2o+mrXBFN
         EcRUSUPKyobh5mMbGur3zn9mbJxl7zOk8rK/xJ3awIm97zvW/1BG4LqPphId3GG+wm
         sYY7sCgw4DzgqGilVWE4xyVQ78zjjM3pHkdsGysY=
Received: from motsugo.ucc.gu.uwa.edu.au (motsugo.ucc.gu.uwa.edu.au [130.95.13.7])
        by mooneye.ucc.gu.uwa.edu.au (Postfix) with ESMTP id 644263C077;
        Wed, 29 Apr 2020 23:19:22 +0800 (AWST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=ucc.gu.uwa.edu.au;
        s=ucc-2016-3; t=1588173562;
        bh=BQ9l6t59THpnqf5f4rHtKKK1nkMAJWjSVnXIVkRTcLA=;
        h=Date:From:To:cc:Subject:From;
        b=l1xJHSL38mw3iuJkX43tygkHxWt10lrL2C1Bjr4XJ6pnlLCmrJVCDFTw2o+mrXBFN
         EcRUSUPKyobh5mMbGur3zn9mbJxl7zOk8rK/xJ3awIm97zvW/1BG4LqPphId3GG+wm
         sYY7sCgw4DzgqGilVWE4xyVQ78zjjM3pHkdsGysY=
Received: by motsugo.ucc.gu.uwa.edu.au (Postfix, from userid 11251)
        id 4D2A7200CE; Wed, 29 Apr 2020 23:19:22 +0800 (AWST)
Received: from localhost (localhost [127.0.0.1])
        by motsugo.ucc.gu.uwa.edu.au (Postfix) with ESMTP id 44991200BE;
        Wed, 29 Apr 2020 23:19:22 +0800 (AWST)
Date:   Wed, 29 Apr 2020 23:19:22 +0800 (AWST)
From:   David Adam <zanchey@ucc.gu.uwa.edu.au>
To:     mtk.manpages@gmail.com
cc:     linux-man@vger.kernel.org
Subject: Missing magic number in statfs(2) et al
Message-ID: <alpine.DEB.2.22.394.2004292313100.1336@motsugo.ucc.gu.uwa.edu.au>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

The statfs(2) page is missing the magic number for SMB2:

SMB2_MAGIC_NUMBER 0xFE534D42

This is defined in fs/cifs/smb2glob.h .

Perhaps it could be added. It being so numerically close to 
CIFS_MAGIC_NUMBER, coupled with `mount.cifs` producing an SMB2 mount (even 
though `mount` still reports a CIFS type), has sent me a little wild over 
the last few weeks.

David Adam
zanchey@ucc.gu.uwa.edu.au
