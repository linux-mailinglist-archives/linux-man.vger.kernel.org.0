Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 83B0F169280
	for <lists+linux-man@lfdr.de>; Sun, 23 Feb 2020 01:40:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726930AbgBWAkI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 22 Feb 2020 19:40:08 -0500
Received: from mout.gmx.net ([212.227.15.18]:58189 "EHLO mout.gmx.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726923AbgBWAkI (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sat, 22 Feb 2020 19:40:08 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
        s=badeba3b8450; t=1582418406;
        bh=OEiWKXvgm8KXS0x+u5Q73hM2WfZAP3+YisswnXm2mYw=;
        h=X-UI-Sender-Class:Date:From:To:Subject;
        b=AhuOa72RTeRmWAz4MyNjal79tQ8JomNl4ocg3hf4fdCRCxaMQDy99tZh1YSJ2Ta6U
         OPHpBvIcypQelssNI72fl3/jWYB8jZbrrzqiYVooew3RoC95SxMYtKTocipglOdMIj
         RU+5IxQne1dNMR1p4LZcPeSkjmB/kCap7qq29zAg=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from skylla.schaltzentrale ([46.91.91.165]) by mail.gmx.com
 (mrgmx004 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1Mel7v-1jfYMV2brh-00aott; Sun, 23 Feb 2020 01:40:06 +0100
Date:   Sun, 23 Feb 2020 01:39:56 +0100
From:   Alexander Miller <alex.miller@gmx.de>
To:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: [PATCH] pidfd_open.2: wfix
Message-ID: <20200223013956.5f3f3add.alex.miller@gmx.de>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:62bZNCbQGJAgmZ0+xKjZexAmJgsfx2MOIfdqRO7WzTS5inURnyN
 D3wLa0CPrscwjrVoi2UVeQ1ZGAXpmQEtk0Lhobg9/blBKutkJVgE3rZFcF3xvDsQPC6h81E
 djJzOoNwft8yMH5mdgGZj8zyDzN7OzNL43YPxfa8MJ5JKQbPjTeN0uSIwSJpRMroYINKPkc
 g2SCEpChNAe5+IYOAtoxA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:F+cxfWns+AU=:Rw0xNcd55in7FjMVMjHECX
 /QrLagt2GhAMgvfBMmqEeVGRo/riiJRaUrOrOEID0n2wg+ZCpgO7ZeL2r7Uctgh8xqYNqhyfE
 wjhBS/tjtp58VAbTqYU6BK0xcmUbn5HdIueON541pw9+dmLzgxFvjBveqrOBJDYyGe2vJGm1b
 drV+oXW1Zv28vAwpAadDyohlSs3astFYdC0M6XieOGoI6uVuQhZrhrb/Ak0bX+1lmqvhnSgv7
 6k29NcrF9zd3niSx61WOWPlCOatWVYMoobLm0XrEJ/dRyaQXTQ2kmkdzjN6aoMJbrBlfwwyD/
 0Gih/Gie2862Na0cq4Jq+2D4UhhQ8pZN7FZrmRNysnANnGqUQo/+vnHkCPRVV3rGyMCBMXOcN
 +/E6FgvHVuR6WaAly24c4+XalEbpnyxWVxBvUtRH/poaTaJrSZJLlyjtXB58cJ8ckAAR8uneN
 QgdH14GdBfwwBSoj4rBxaeGONiFA9nUmFmnI4PJFcHz4/LimAIlNC6ItE5EOw2jhgfs78FBIk
 dm6BJGgLtn2G6LI1apz4zEuCDm/TF/oC2GH5C1HJZXjDVumtLuIlnrXcDln8p/q0IIX1fR6Aw
 7Ug3FHN1DhjraHCFA+qUXrC9XiVkqnBajsXhaw034aqM8kjLO2krIgztb6T4HL1HDXkGptqs/
 RoX3OV7m70VaOdHWpQzzJvycS/TMvfdoc6gwNrdGjv8uFl+WsioiDOILhkm9Pzbn/epiecQke
 U7SHjBolHFrO+R3wRywFOoZAGmIwpfCWrmip7kmlrf6YP18JYaVQocD0ZhvtigkpiwpiFv9SN
 82pYiKjh4jI0hV3NECsKTtAJ1vRDXAldKgmeIsdSlJvRq+uixa/MPc4s+ElAJPvn74yylnlrB
 9HoGbSZ3Utiyg+7gwWrwikwxpYB+OP7EMNc6K7CDp3yhBa0dS51aDJFzA9h1As1O3RbPVu3Il
 jsdlNkSZZgZHHA24wal/hFgvIF//+DvHFu2RjEWCyfvfCBMAjBroX0YwdxpcmFV41OFp/H0Sw
 hHS61xjvB1wmdq0HLmIosGzZtDkZoak+3zDEKppZsvyYF5kLmmFG+C/++Dk/p8HIKYrCFw5kS
 BD3UgplL72mG1HjYlRyTI4YvQivIpOUibMSXF2nCd2yw0HTIIzlbkNZFpekB5RYOc62T8HHPi
 1eXo/WcQbR5baedNnZiabvGZYeSdeL6lZWs+WZqbV5g6oQ7BcYnKeXrIJLhn7OTqFBAnBfsSj
 6YI4U6Vyz4ItilIxZ
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alexander Miller <alex.miller@gmx.de>
=2D--
 man2/pidfd_open.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/pidfd_open.2 b/man2/pidfd_open.2
index 3c847f7e1..8c4635508 100644
=2D-- a/man2/pidfd_open.2
+++ b/man2/pidfd_open.2
@@ -146,7 +146,7 @@ flag.
 .PP
 A PID file descriptor returned by
 .BR pidfd_open ()
-(of by
+(or by
 .BR clone (2)
 with the
 .BR CLONE_PID
=2D-
2.24.1

